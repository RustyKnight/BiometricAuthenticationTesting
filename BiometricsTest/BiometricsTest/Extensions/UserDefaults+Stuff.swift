//
//  UserDefaults+Stuff.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 9/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation

extension UserDefaults {
  func contains(key: String) -> Bool {
    return UserDefaults.standard.object(forKey: key) != nil
  }
  
  func bool(forKey key: String, defaultValue: Bool) -> Bool {
    guard contains(key: key) else {
      return defaultValue
    }
    return bool(forKey: key)
  }
}
