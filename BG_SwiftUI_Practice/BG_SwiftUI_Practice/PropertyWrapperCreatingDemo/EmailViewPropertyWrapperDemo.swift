//
//  EmailViewPropertyWrapperDemo.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct EmailViewPropertyWrapperDemo: View {

    let user = User(name: "Bhavesh", email: "BHAasdfa@gamil.Com")

    var body: some View {
        VStack {
            Text(user.name)
            Text(user.email)
        }
    }
}

struct EmailViewPropertyWrapperDemo_Previews: PreviewProvider {
    static var previews: some View {
        EmailViewPropertyWrapperDemo()
    }
}


struct User {
    var name: String

    @AllowedCase var email: String
}
