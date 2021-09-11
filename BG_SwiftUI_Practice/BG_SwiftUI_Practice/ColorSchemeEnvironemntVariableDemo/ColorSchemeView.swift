//
//  ColorSchemeView.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct ColorSchemeView: View {

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        Text ( colorScheme == .dark ?
            "Dark Mode" : "Light Mode")
            .foregroundColor(colorScheme == .dark ?
                .green : .blue)
    }
}

struct ColorSchemeView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSchemeView()
    }
}
