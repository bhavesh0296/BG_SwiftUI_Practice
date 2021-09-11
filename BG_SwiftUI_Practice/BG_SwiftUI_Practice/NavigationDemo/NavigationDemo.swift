//
//  NavigationDemo.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct NavigationDemo: View {

    @State var displayView: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView(showView: $displayView), isActive: $displayView) {
                    Text("This is a text View")
                }

//                Button(action: {
//                    self.displayView = true
//                }) {
//                Text("Next")

//                }
            }.navigationBarTitle("Nav Bar Title")
        }
    }
}

struct NavigationDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemo()
    }
}
