//
//  WheelAnimationDemo.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct WheelAnimationDemo: View {

    @State private var degrees = 0.0

    var body: some View {

        VStack {
            Image(systemName: "arrow.down")
                .foregroundColor(Color.black)
                .font(.largeTitle)

            Image("wheel")
                .resizable()
                .frame(width: 300, height: 300)
                .rotationEffect(.degrees(degrees))

            Button(action: {

                let d = Double.random(in: 720...7200)
                let animation = Animation.easeInOut(duration: d/360)
                withAnimation(animation) {
                    self.degrees += d
                }

            }) {
                Text("Spin")
                    .font(.headline)
                    .bold()
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    .background(Color.yellow)
                    .foregroundColor(Color.white)

            }
        }
    }
}

struct WheelAnimationDemo_Previews: PreviewProvider {
    static var previews: some View {
        WheelAnimationDemo()
    }
}
