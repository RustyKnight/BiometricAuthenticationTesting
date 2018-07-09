//
//  UIAlertAction+Defaults.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 9/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertAction {
  
  static func yes(localisedKey: String = "Yes", style: UIAlertAction.Style = .default, then: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
    return UIAlertAction(title: localisedKey.localized, style: style, handler: then)
  }
  
  static func no(localisedKey: String = "No", style: UIAlertAction.Style = .default, then: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
    return UIAlertAction(title: localisedKey.localized, style: style, handler: then)
  }
  
  static func ok(localisedKey: String = "Ok", style: UIAlertAction.Style = .default, then: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
    return UIAlertAction(title: localisedKey.localized, style: style, handler: then)
  }
  
  static func cancel(localisedKey: String = "Cancel", style: UIAlertAction.Style = .default, then: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
    return UIAlertAction(title: localisedKey.localized, style: style, handler: then)
  }

}
