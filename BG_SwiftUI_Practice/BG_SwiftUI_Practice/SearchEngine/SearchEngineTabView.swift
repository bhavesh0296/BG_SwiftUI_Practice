//
//  SearchEngineTabView.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SearchEngineTabView: View {

    @EnvironmentObject var searchEngine: SearchEngineChoice

    var body: some View {
        TabView {

            NavigationView {
                NavigationLink(destination: SearchEngineTabDetailView()) {
                    Text("Your search engine is \(searchEngine.engine)")
                }
            }.tabItem {
                VStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            }.tag(0)

            SearchEngineTabDetailView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass.circle.fill")
                        Text("Search Engine")
                    }
            }.tag(1)

        }
    }
}

struct SearchEngineTabView_Previews: PreviewProvider {
    static var previews: some View {
        SearchEngineTabView()
    }
}
