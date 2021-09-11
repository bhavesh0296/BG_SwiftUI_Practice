//
//  TitleModifier.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct TitleModifier: ViewModifier {


    func body(content: Content ) -> some View {
        content.font(.largeTitle)
            .foregroundColor(Color.green)
            .shadow(radius: 2)
    }

}


struct TitleModifierDemo: View {

    var body: some View {
        Text("Hello Title")
        .modifier(TitleModifier())
    }
}
