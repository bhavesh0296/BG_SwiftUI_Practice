//
//  SpeakerCard.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 08/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SpeakerCard: View {

    var body: some View {
        VStack{

            HStack{
                Image("BhaveshPassportPhoto")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 3))

                VStack {
                    Text("Bhavesh Gupta")
                        .font(.system(size: 18))
                        .bold()

                    Text("iOS Developer, TechTree")
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color.gray.opacity(0.5))

                    HStack {
                        Image(systemName: "globe")
                            .font(.system(size: 12))
                            .foregroundColor(.blue)
                            .foregroundColor(Color.black)

                        Button(action: {
                            if let url = URL(string: "https://bhavesh0296.github.io"),
                                UIApplication.shared.canOpenURL(url) {
                                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                            }
                        }) {
                            Text("bhavesh0296.github.io")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black)
                        }
                    }

                    HStack {
                        Image(systemName: "envelope")
                            .font(.system(size: 12))
                            .foregroundColor(.blue)

                        Button(action: {
                            if let url = URL(string: "https://bhavesh0296.github.io"),
                                UIApplication.shared.canOpenURL(url) {
                                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                            }
                        }) {
                            Text("bhavesh0296.github.io")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black)
                        }
                    }

                    HStack {
                        Image(systemName: "airplane")
                            .font(.system(size: 12))
                            .foregroundColor(.blue)

                        Button(action: {
                            if let url = URL(string: "https://bhavesh0296.github.io"),
                                UIApplication.shared.canOpenURL(url) {
                                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                            }
                        }) {
                            Text("bhavesh0296.github.io")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black)
                        }
                    }
                }
            }

            Divider()

            Text("Bhavesh Gupta is a iOS App Developer and works as a associate into the TechTree IT Systems Private Limited(https://techtreeit.com), a technology company specializing in developing mobile applications)")
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
        .border(Color.black, width: 1)
        .padding()

    }
}

struct SpeakerCard_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerCard()
    }
}
