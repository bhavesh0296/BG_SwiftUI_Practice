//
//  DetailView.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct DetailView: View {

    @Binding var showView: Bool

    var body: some View {
        VStack {
            Text("This is the Detail View")
            Button(action: {
                self.showView = false
            }) {
                Text("Back")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(showView: .constant(false))
    }
}
