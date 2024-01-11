//
//  CredentialsViewController.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 8/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit
import KeychainAccess

class CredentialsViewController: UIViewController {
    
    @IBOutlet weak var makeAccountButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var effectView: VisualEffectView!
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    
    var password: String? {
        return passwordField.text
    }
    var userName: String? {
        return userNameField.text
    }
    
    var recoginizer: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        effectView.layer.cornerRadius = 20
        effectView.layer.borderWidth = 1
        effectView.layer.borderColor = UIColor(red: 83.0/255.0, green: 92.0/255.0, blue: 104.0/255.0, alpha: 1.0).cgColor
        
        effectView.blurRadius = 50
        effectView.scale = 1.5
        effectView.colorTint = UIColor(red: 224/255, green: 86/255, blue: 253/255, alpha: 1.0)
        effectView.colorTintAlpha = 0.1
        
        makeAccountButton.layer.cornerRadius = makeAccountButton.frame.height / 2.0
        makeAccountButton.clipsToBounds = true
        
        loginButton.layer.cornerRadius = loginButton.frame.height / 2.0
        loginButton.clipsToBounds = true
        
        deleteButton.layer.cornerRadius = loginButton.frame.height / 2.0
        deleteButton.clipsToBounds = true
        
        recoginizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        let defaults = UserDefaults.standard
        guard let userName = defaults.string(forKey: "UserName") else {
            deleteButton.isHidden = true
            return
        }
        
        userNameField.text = userName
        deleteButton.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.addGestureRecognizer(recoginizer)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        dismissKeyboard()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        view.removeGestureRecognizer(recoginizer)
    }
    
    @objc func dismissKeyboard() {
        view.findAndResignFirstResponder()
    }
    
    @IBAction func makeAccount(_ sender: Any) {
        performSegue(withIdentifier: "Segue.makeAccount", sender: self)
    }
    
    @IBAction func performUser(_ sender: Any) {
        dismissKeyboard()
        let defaults = UserDefaults.standard
        let userName = defaults.string(forKey: "UserName")
        defaults.removeObject(forKey: "UserName")
        defaults.synchronize()
        
        deleteButton.isHidden = true
        userNameField.text = nil
        
        if let name = userName {
            let keyChain = Keychain(service: "super.awesome.funtime.messaging")
            do {
                try keyChain.remove(name)
            } catch let error {
                showOkAlert(titled: "Bo bo 🤕", message: "Oh no, something went wrong with updating the key chain: \(error)")
            }
        }
        showOkAlert(titled: "😢", message: "User account has been deleted")
    }
    
    @IBAction func login(_ sender: Any) {
        dismissKeyboard()
        guard let userName = self.userName, let password = self.password, !userName.trimming.isEmpty && !password.trimming.isEmpty else {
            self.showAlert(titled: "Naughty naughty ☹️", message: "You must provide a user name and password")
            return
        }
        // Get user credentials
        // Prompt user to see if they want to store them in the key chain...
        // Store them in the keychain
        let defaults = UserDefaults.standard
        defaults.set(userName, forKey: "UserName")
        let prompt = defaults.bool(forKey: "Autologin.prompt", defaultValue: true)
        let ba = BiometricAuth()
        switch ba.supportedBiometry {
        case .available(.faceID):
            guard prompt else {
                performSegue(withIdentifier: "Segue.login", sender: self)
                return
            }
            defaults.set(false, forKey: "Autologin.prompt")
            defaults.synchronize()
            showYesNoAlert(titled: "Supa-dupa", message: "Would you like to take advatange of your super pretty, smiley, face to authenticate automagically in the future?", yes: { (action) in
                self.saveAccount()
            })
        case .available(.touchID):
            guard prompt else {
                performSegue(withIdentifier: "Segue.login", sender: self)
                return
            }
            defaults.set(false, forKey: "Autologin.prompt")
            defaults.synchronize()
            showYesNoAlert(titled: "Supa-dupa", message: "Would you like to take advatange of your super-dupa golden touch to authenticate automagically in the future?", yes: { (action) in
                self.saveAccount()
            })
        default:
            // Dump them into the "normal" key chain :/
            // or simply do nothing :/
            performSegue(withIdentifier: "Segue.login", sender: self)
            break
        }
    }
    
    func saveAccount() {
        guard let password = password else {
            self.showAlert(titled: "Naughty naughty ☹️", message: "You must provide a user name and password")
            return
        }
        let keychain = Keychain(service: "super.awesome.funtime.messaging")
        let defaults = UserDefaults.standard
        DispatchQueue.global().async {
            do {
                try keychain.accessibility(.whenPasscodeSetThisDeviceOnly, authenticationPolicy: .biometryCurrentSet)
                    .authenticationPrompt("Automagically authenticate in the future")
                    .set(password, key: "UserAccount")
                defaults.set(true, forKey: "UseBio")
                defaults.synchronize()
                DispatchQueue.onMainThread {
                    self.performSegue(withIdentifier: "Segue.login", sender: self)
                }
            } catch let error {
                defaults.set(false, forKey: "UseBio")
                defaults.synchronize()
                DispatchQueue.onMainThread {
                    self.showOkAlert(titled: "Bo bo 🤕", message: "Oh no, something went wrong with updating the key chain: \(error)")
                }
            }
        }
    }
}
