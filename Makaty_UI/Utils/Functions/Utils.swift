//
//  Utils.swift
//  Makaty_UI
//
//  Created by Madiapps on 03/01/2023.
//

import SwiftUI

func isAppAlreadyLaunchedOnce() -> Bool {
    let defaults = UserDefaults.standard
    if defaults.string(forKey: Constants.AppAlreadyLaunchedOnceKey) != nil {
        print("App already launched")
        return true
    } else {
        defaults.set(true, forKey: Constants.AppAlreadyLaunchedOnceKey)
        print("App launched for the first time")
        return false
    }
}
