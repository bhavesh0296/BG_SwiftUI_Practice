//
//  TabViewDemo.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct TabViewDemo: View {

    @State var tabbarIndex: Int = 0
    
    var body: some View {
        TabView(selection: $tabbarIndex) {
            TabView1(tabbarIndex: $tabbarIndex)
                .tabItem {
                    Text("TabBar1").padding()
            }.tag(0)

            TabView2()
                .tabItem {
                    Text("TabBar2").padding()
            }.tag(1)
        }
    }
}

struct TabView1: View {

    @Binding var tabbarIndex: Int
    var body: some View {
        VStack{
            Text("This is TabView1")
            Button(action: {
                self.tabbarIndex = 1
            }) {
                Text("Move to Tabbar2")
            }
        }

    }
}

struct TabView2: View {
    var body: some View {
        Text("This is TabView2")
    }
}

struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}
