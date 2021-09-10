//
//  TwitterCard.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 07/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct TwitterCard: View {
    var body: some View {
        HStack {
            Image("BhaveshPassportPhoto")
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(18)

            VStack {
                Text("Bhavesh Gupta")
                    .font(.title)
                    .bold()

                Text("iOS Developer")
                    .italic()

                Text("TechTree IT Systems Private Limited")
                    .font(.system(size: 12))

                Button(action: {

                    if let url = URL(string: "https://twitter.com/bhaveshgupta21"),
                        UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.openURL(url)
                    }
                }) {
                    Text("https://twitter.com/bhaveshgupta21")
                        .font(.system(size: 9))
                        .foregroundColor(Color.blue)
                }
            }
        }
    }
}

struct TwitterCard_Previews: PreviewProvider {
    static var previews: some View {
        TwitterCard()
    }
}
