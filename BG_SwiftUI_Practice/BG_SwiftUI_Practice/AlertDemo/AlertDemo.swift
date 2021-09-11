//
//  AlertDemo.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct AlertDemo: View {

    @State var isAlertShow: Bool = false

    var body: some View {

        VStack {
            Text("Hello")
                .onTapGesture {
                    self.isAlertShow = true
            }
            .alert(isPresented: $isAlertShow) {
                Alert(title: Text("Alert"),
                      message: Text("This is the Alert Demo message"),
                      dismissButton: .default(Text("Hide Alert")))
            }
        }
    }
}

struct AlertDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertDemo()
    }
}
