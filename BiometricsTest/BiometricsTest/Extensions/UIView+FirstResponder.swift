//
//  UIView+FirstResponder.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 9/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

  var firstResponder: UIView? {
    guard !isFirstResponder else { return self }
    
    for subview in subviews {
      if let firstResponder = subview.firstResponder {
        return firstResponder
      }
    }
    
    return nil
  }

  func findAndResignFirstResponder() {
    guard let responder = firstResponder else {
      return
    }
    responder.resignFirstResponder()
  }
}
