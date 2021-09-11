//
//  DividerDemo.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct DividerDemo: View {
    var body: some View {
        HStack {
            Image(systemName: "pencil")
            Image(systemName: "pencil")
            Image(systemName: "pencil")
            Image(systemName: "pencil")
            Image(systemName: "pencil")
            Divider()
            Image(systemName: "pencil")
            Image(systemName: "pencil")
            Image(systemName: "pencil")
            Image(systemName: "pencil")
            
        }
    }
}

struct DividerDemo_Previews: PreviewProvider {
    static var previews: some View {
        DividerDemo()
    }
}
