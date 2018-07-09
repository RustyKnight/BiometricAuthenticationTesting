//
//  DispatchQueue+Main.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 9/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation

extension DispatchQueue {
  static func onMainThread(_ perform: @escaping () -> Void) {
    guard !Thread.isMainThread else {
      perform()
      return
    }
    DispatchQueue.main.async {
      perform()
    }
  }

  static func laterOnMainThread(_ perform: @escaping () -> Void) {
    DispatchQueue.main.async {
      perform()
    }
  }
}
