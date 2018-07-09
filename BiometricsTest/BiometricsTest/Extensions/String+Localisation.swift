//
//  String+Localisation.swift
//  BiometricsTest
//
//  Created by Shane Whitehead on 9/7/18.
//  Copyright © 2018 Shane Whitehead. All rights reserved.
//

import Foundation

extension String {
  var localized: String {
    return NSLocalizedString(self, comment: "")
  }
}
