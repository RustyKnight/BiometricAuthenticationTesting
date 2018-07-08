//
//  CredentialsViewController.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 8/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import UIKit

class CredentialsViewController: UIViewController {
	
	@IBOutlet weak var makeAccountButton: UIButton!
	@IBOutlet weak var loginButton: UIButton!
	@IBOutlet weak var effectView: VisualEffectView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		effectView.layer.cornerRadius = 20
		effectView.layer.borderWidth = 1
		effectView.layer.borderColor = UIColor(red: 83.0/255.0, green: 92.0/255.0, blue: 104.0/255.0, alpha: 1.0).cgColor
		
		effectView.blurRadius = 5
		effectView.scale = 1.5
		effectView.colorTint = UIColor(red: 224/255, green: 86/255, blue: 253/255, alpha: 1.0)
		effectView.colorTintAlpha = 0.1
		
		makeAccountButton.layer.cornerRadius = makeAccountButton.frame.height / 2.0
		makeAccountButton.clipsToBounds = true

		loginButton.layer.cornerRadius = loginButton.frame.height / 2.0
		loginButton.clipsToBounds = true
	}
	
}
