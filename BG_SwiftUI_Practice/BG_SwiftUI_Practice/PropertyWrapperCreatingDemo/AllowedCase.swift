//
//  AllowedCase.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import Foundation

@propertyWrapper
struct AllowedCase {

    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.lowercased()
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.lowercased()
    }
}
