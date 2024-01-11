//
//  LoggedInViewController.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 9/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

class LoggedInViewController: UIViewController {    
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var effectView: VisualEffectView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    var userName: String?
    var password: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        effectView.layer.cornerRadius = 20
        effectView.layer.borderWidth = 1
        effectView.layer.borderColor = UIColor(red: 83.0 / 255.0, green: 92.0 / 255.0, blue: 104.0 / 255.0, alpha: 1.0).cgColor
        
        effectView.blurRadius = 20
        effectView.scale = 1.5
        effectView.colorTint = UIColor(red: 224 / 255, green: 86 / 255, blue: 253 / 255, alpha: 1.0)
        effectView.colorTintAlpha = 0.1
        
        logoutButton.layer.cornerRadius = logoutButton.frame.height / 2.0
        logoutButton.clipsToBounds = true
        
        userNameLabel.text = userName ?? "🤷‍♂️"
        passwordLabel.text = password ?? "🤷‍♂️"
    }
    
    @IBAction func logout(_ sender: Any) {
        performSegue(withIdentifier: "Segue.logout", sender: self)
    }
}
