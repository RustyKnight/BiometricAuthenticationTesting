//
//  UIViewController+Action.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 9/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

  func show(_ style: UIAlertController.Style, titled: String? = nil, message: String, actions: [UIAlertAction]? = nil) {
    let controller: UIAlertController = UIAlertController(title: titled, message: message, preferredStyle: style)
    if let actions = actions {
      for action in actions {
        controller.addAction(action)
      }
    }
    self.present(controller, animated: true, completion: nil)
  }

  func showAlert(titled: String? = nil, message: String, actions: [UIAlertAction]? = nil) {
    show(.alert, titled: titled, message: message, actions: actions)
  }
  
  func showOkAlert(titled: String? = nil, message: String, then: ((UIAlertAction) -> Void)? = nil) {
    showAlert(titled: titled, message: message, actions: [UIAlertAction.ok(then: then)])
  }

  func showOkCancelAlert(titled: String? = nil, message: String, ok: ((UIAlertAction) -> Void)? = nil, cancel: ((UIAlertAction) -> Void)? = nil) {
    showAlert(titled: titled, message: message, actions: [UIAlertAction.ok(then: ok), UIAlertAction.cancel(then: cancel)])
  }

  func showYesNoAlert(titled: String? = nil, message: String, yes: ((UIAlertAction) -> Void)? = nil, no: ((UIAlertAction) -> Void)? = nil) {
    showAlert(titled: titled, message: message, actions: [UIAlertAction.yes(then: yes), UIAlertAction.no(then: no)])
  }

}
