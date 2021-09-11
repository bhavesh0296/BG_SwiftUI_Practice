//
//  ButtonZoom.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct ButtonZoom: View {

    @State private var scaleFactor: CGFloat = 1.0
    @State private var animate: Bool = true
    @State private var opacity: Double = 1.0

    var body: some View {

//        Button(action: {
//            //
//        }) {
//            Text("Click Here")
//                .bold()
//        }
//        .onAppear {
//            self.scaleFactor = 2.5
//        }
//    .padding(40)
//
//        .background(Color.purple)
//        .foregroundColor(Color.white)
//        .clipShape(Circle())
//        .scaleEffect(scaleFactor)
//        .animation(Animation.easeInOut(duration: 2)
//        .repeatForever(autoreverses: true))

        Button(action: {
            self.animate = false
            self.opacity = 1.0
        }) {

            Text("Click Me")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.blue)
                .padding()
                .background(Color.orange)
                .overlay(
                    Rectangle()
                        .stroke(Color.green, lineWidth: 4)
                )
            .opacity(opacity)
                .onAppear {
                    let baseAnimation = Animation.linear(duration: 1)
                    withAnimation(self.animate ?
                        baseAnimation.repeatForever(autoreverses: true) : Animation.default) {
                            self.opacity = 0.2
                    }
            }
        }


    }
}

struct ButtonZoom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonZoom()
    }
}
