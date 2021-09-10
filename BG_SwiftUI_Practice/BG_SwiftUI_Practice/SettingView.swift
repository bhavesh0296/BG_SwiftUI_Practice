//
//  SettingView.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SettingView: View {

    var body: some View {
        List {
            Section(header: Text("Section 1")) {
                Text("Item 1")
                Text("Item 2")
            }

            Section (header: Text("Section 2")) {
                Text("Item 3")
                Text("Item 4")
            }

            Section (header: Text("Section 3")) {
                Text("Item 3")
                Text("Item 4")
            }

            Section (header: Text("Section 4")) {
                Text("Item 3")
                Text("Item 4")
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
