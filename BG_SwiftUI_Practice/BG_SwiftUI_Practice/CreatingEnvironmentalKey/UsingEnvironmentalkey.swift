//
//  UsingEnvironmentalkey.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct UsingEnvironmentalkey: View {

    @Environment(\.appName) private var appName
    @Environment(\.appTitleSize) private var appTitleSize

    var body: some View {
        Text(appName)
            .font(.system(size: appTitleSize))
    }
}

struct UsingEnvironmentalkey_Previews: PreviewProvider {
    static var previews: some View {
        UsingEnvironmentalkey()
    }
}
