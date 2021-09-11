//
//  SearchEngineTabDetailView.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SearchEngineTabDetailView: View {

    @State var selectedEngine = SearchEngineChoice().engine

    var searchEngines = SearchEngineChoice().searchEngines

    @EnvironmentObject var searchEngine: SearchEngineChoice
    
    var body: some View {
        List {
            ForEach(searchEngines, id: \.self) { engine in
                Button(action: {
                    self.selectedEngine = engine
                    self.searchEngine.engine = engine
                }) {
                    HStack {
                        Image(systemName:
                            engine == self.selectedEngine ?
                            "checkmark.square" : "square")
                        Text(engine)
                    }
                }
            }
        }
    }
}

struct SearchEngineTabDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchEngineTabDetailView()
    }
}
