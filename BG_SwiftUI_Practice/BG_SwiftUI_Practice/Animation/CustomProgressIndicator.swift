//
//  CustomProgressIndicator.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct CustomProgressIndicator: View {

    @Binding var degrees: Double
    @Binding var animate: Bool

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color.red)

            Circle()
                .trim(from: 0, to: 0.001)
                .stroke(style: StrokeStyle(lineWidth: 20.0,
                                           lineCap: .round,
                                           lineJoin: .round))
                .foregroundColor(Color.red)
                .rotationEffect(Angle(degrees: -90))
                .rotationEffect(Angle(degrees: self.degrees))
                .animation(self.animate ?
                    Animation.easeInOut(duration: 2).repeatForever(autoreverses: false) : Animation.default)

        }
    }
}
//
//struct CustomProgressIndicator_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomProgressIndicator()
//    }
//}


struct CustomIndicatorView: View {
    
    @State var progressIndicatorDegree: Double = 0
    @State var isProgressIndicatorOn: Bool = true

    @State var buttonCaptain = "Start"


    var body: some View {
        VStack {
            CustomProgressIndicator(degrees: $progressIndicatorDegree,
                                    animate: $isProgressIndicatorOn)
                .frame(width: 200, height: 200)

            Button(action: {

                switch self.buttonCaptain {
                case "Start":
                    self.isProgressIndicatorOn = true
                    self.progressIndicatorDegree = 360
                case "Stop":
                    self.isProgressIndicatorOn = false
                    self.progressIndicatorDegree = 0

                default:
                    break
                }
                self.buttonCaptain = self.buttonCaptain == "Start" ? "Stop" : "Start"

            }) {
                Text(self.buttonCaptain)
            }
        }
    }
}
