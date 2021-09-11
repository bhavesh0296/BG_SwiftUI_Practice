//
//  SearchEngineView.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SearchEngineView: View {

    @ObservedObject var searchEngine = SearchEngineChoice()

    var body: some View {
//        NavigationView {
//            VStack {
//                NavigationLink(destination: SearchEngineDetailView( searchEngine: searchEngine,
//                                                                    selectedEngine: searchEngine.engine)) {
//                    Text("Your search engine is \(searchEngine.engine)")
//                }
//            }
//        }

        NavigationView {
            VStack {
                NavigationLink(destination: SearchEngineDetailView2(searchEngineChoice: searchEngine)) {
                    Text("Your search engine is \(searchEngine.engine)")
                }
            }
        }
    }
}

struct SearchEngineView_Previews: PreviewProvider {
    static var previews: some View {
        SearchEngineView()
    }
}
