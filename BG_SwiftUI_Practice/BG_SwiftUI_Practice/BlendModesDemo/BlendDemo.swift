//
//  BlendDemo.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct BlendDemo: View {
    var body: some View {

        //        ZStack {
        //            Image("BhaveshPassportPhoto")
        //                .resizable()
        //                .aspectRatio(contentMode: .fill)
        //
        //            Rectangle()
        //                .fill(Color.red)
        //                .blendMode(.darken)
        //        }
        //    .frame(width: 180, height: 180, alignment: .center)
        VStack {
            ZStack {
                Circle()
                    .fill(Color.yellow)
                    .offset(x: -50, y: -50)
                    .blendMode(.screen)

                Circle()
                    .fill(Color.green)
                    .blendMode(.screen)

                Circle()
                    .fill(Color.red)
                    .offset(x: 50, y: 50)
                    .blendMode(.screen)

            }.frame(width: 300, height: 200)
//            .blur(radius: 5)
                .saturation(0.3)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)

    }
}

struct BlendDemo_Previews: PreviewProvider {
    static var previews: some View {
        BlendDemo()
    }
}
