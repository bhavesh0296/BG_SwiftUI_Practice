//
//  SheetDemo.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SheetDemo: View {

    @State private var isShowSheet: Bool = false

    var body: some View {

        Text("Sheet Demo")
            .onTapGesture {
                self.isShowSheet = true
        }.actionSheet(isPresented: $isShowSheet) {
            ActionSheet(title: Text("Action Sheet"),
                        message: Text("Here we are presenting Action Sheet"),
                        buttons: [.cancel(), .default(Text("Dismiss"))])
        }

    }
}

struct SheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        SheetDemo()
    }
}
