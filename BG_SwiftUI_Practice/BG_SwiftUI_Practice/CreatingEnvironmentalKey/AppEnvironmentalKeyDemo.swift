//
//  AppEnvironmentalKeyDemo.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct AppNameEnvironmentKey: EnvironmentKey {

    static var defaultValue: String = "Swift_Practice"

}

struct AppTitleSizeEnvironmentKey: EnvironmentKey {
    static var defaultValue: CGFloat = 35.0
}

extension EnvironmentValues {
    var appName: String {
        set {
            self[AppNameEnvironmentKey.self] = newValue
        }
        get {
            self[AppNameEnvironmentKey.self]
        }
    }

    var appTitleSize: CGFloat {
        get {
            self[AppTitleSizeEnvironmentKey.self]
        }
        set {
            self[AppTitleSizeEnvironmentKey.self] = newValue
        }
    }
}
