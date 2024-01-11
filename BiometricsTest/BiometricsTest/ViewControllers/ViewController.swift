//
//  ViewController.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 8/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit
import CoreMotion
import KeychainAccess

private struct AccelerometerMovement {
    let x: Double
    let y: Double
}

class ViewController: UIViewController {
    
    fileprivate let motionManager = CMMotionManager()
    fileprivate var accelerometerMovement: AccelerometerMovement?
    
    var userName: String?
    var password: String?
    
    var multiplerOfIndexInHierarchyToParallaxOffset: CGFloat = 50.0
    
    @IBOutlet weak var parallaxView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        motionManager.deviceMotionUpdateInterval = 0.016
        if let currentQueue = OperationQueue.current {
            motionManager.startAccelerometerUpdates(to: currentQueue) {[weak self] data, error in
                guard let strongSelf = self else { return }
                strongSelf.accelerometerMovement = AccelerometerMovement(
                    x: data?.acceleration.x ?? 0.0,
                    y: data?.acceleration.y ?? 0.0
                )
                UIView.animate(withDuration: 0.1, animations: {
                    strongSelf.applyParallaxEffectOnView()
                })
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.laterOnMainThread {
            self.performLogin()
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        motionManager.stopDeviceMotionUpdates()
    }
    
    func performLogin() {
        let defaults = UserDefaults.standard
        guard let userName = defaults.string(forKey: "UserName") else {
            performSegue(withIdentifier: "Segue.credentials", sender: nil)
            return
        }
        let ba = BiometricAuth()
        switch ba.supportedBiometry {
        case .available(.faceID): fallthrough
        case .available(.touchID):
            guard defaults.bool(forKey: "UseBio") else {
                performSegue(withIdentifier: "Segue.credentials", sender: nil)
                return
            }
            let keyChain = Keychain(service: "super.awesome.funtime.messaging")
            DispatchQueue.global().sync {
                do {
                    let password = try keyChain
                        .authenticationPrompt("Get your magic key to the portal of super fun times")
                        .get("UserAccount")
                    DispatchQueue.onMainThread {
                        guard let password = password else {
                            self.performSegue(withIdentifier: "Segue.credentials", sender: nil)
                            return
                        }
                        self.userName = userName
                        self.password = password
                        self.performSegue(withIdentifier: "Segue.welcome", sender: self)
                    }
                } catch {
                    DispatchQueue.onMainThread {
                        self.performSegue(withIdentifier: "Segue.credentials", sender: nil)
                    }
                }
            }
        default:
            performSegue(withIdentifier: "Segue.credentials", sender: nil)
            break
        }
    }
    
    
    fileprivate func applyParallaxEffectOnView() {
        var parallaxOffset: CGFloat = 0.0
        var offsetX: CGFloat = 0.0, offsetY: CGFloat = 0.0
        if let accelerometerMovement = accelerometerMovement {
            offsetX = CGFloat(accelerometerMovement.x * 0.25)
            offsetY = CGFloat(accelerometerMovement.y * -0.25)
            parallaxOffset *= 2.0
        }
        
        var t = CATransform3DMakeScale(1.1, 1.1, 1.1)
        t.m34 = 1.0/(-500)
        let xAngle = (offsetX * parallaxOffset) * CGFloat(Double.pi / 180.0)
        let yAngle = (offsetY * parallaxOffset) * CGFloat(Double.pi / 180.0)
        t = CATransform3DRotate(t, xAngle, 0, -(0.5 - offsetY), 0)
        parallaxView.layer.transform = CATransform3DRotate(t, yAngle, (0.5 - offsetY) * 2, 0, 0)
        applyParallaxEffectOnSubviews(xOffset: offsetX, yOffset: offsetY)
    }
    
    fileprivate func applyParallaxEffectOnSubviews(xOffset: CGFloat, yOffset: CGFloat) {
        var parallaxOffsetToSet: CGFloat
        for subview in parallaxView.subviews {
            parallaxOffsetToSet = parallaxOffset(forView: subview)
            let xParallaxOffsetAndSuperviewOffset = xOffset * CGFloat(parallaxOffsetToSet)
            let yParallaxOffsetAndSuperviewOffset = yOffset * CGFloat(parallaxOffsetToSet)
            subview.layer.transform = CATransform3DMakeTranslation(xParallaxOffsetAndSuperviewOffset, yParallaxOffsetAndSuperviewOffset, 0)
        }
    }
    
    fileprivate func parallaxOffset(forView view: UIView) -> CGFloat {
        let count = parallaxView.subviews.count
        var offset = 50
        if let index = parallaxView.subviews.firstIndex(of: view) {
            offset = count - index
        }
        let result = CGFloat(offset) * multiplerOfIndexInHierarchyToParallaxOffset
        return result
    }
    
    @IBAction func makeAccount(_ segue: UIStoryboardSegue) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "Segue.makeAccount", sender: self)
        }
    }
    
    @IBAction func cancelAccountCreation(_ segue: UIStoryboardSegue) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "Segue.credentials", sender: self)
        }
    }
    
    @IBAction func accountCreated(_ segue: UIStoryboardSegue) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "Segue.credentials", sender: self)
        }
    }
    
    @IBAction func login(_ segue: UIStoryboardSegue) {
        guard let controller = segue.source as? CredentialsViewController else {
            showOkAlert(titled: "🤪😡🤬😱😭🤕", message: "Not coming from the credentials view")
            return
        }
        guard let userName = controller.userName, let password = controller.password else {
            showOkAlert(titled: "🤪😡🤬😱😭🤕", message: "No username/password defined")
            return
        }
        
        self.userName = userName
        self.password = password
        
        DispatchQueue.laterOnMainThread {
            self.performSegue(withIdentifier: "Segue.welcome", sender: self)
        }
    }
    
    @IBAction func logout(_ segue: UIStoryboardSegue) {
        DispatchQueue.laterOnMainThread {
            self.performLogin()
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue.welcome" {
            guard let controller = segue.destination as? LoggedInViewController else {
                showOkAlert(titled: "🤪😡🤬😱😭🤕", message: "Welcome wagon not going to welcomes-ville")
                return
            }
            controller.userName = userName
            controller.password = password
        }
    }
}

