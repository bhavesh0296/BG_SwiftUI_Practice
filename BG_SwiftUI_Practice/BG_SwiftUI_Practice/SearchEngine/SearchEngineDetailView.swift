//
//  SearchEngineDetailView.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SearchEngineDetailView: View {

    var searchEngines = SearchEngineChoice().searchEngines

    var searchEngine: SearchEngineChoice


    @State var selectedEngine: String

    var body: some View {
        List {
            ForEach(searchEngines, id: \.self) { engine in
                Button(action: {
                    //
                    self.searchEngine.engine = engine
                    self.selectedEngine = engine

                }) {
                    HStack {
                        Text(engine)
                        Image(systemName:
                            self.selectedEngine == engine ?
                            "checkmark.square" : "square")
                    }
                }
            }
        }.onAppear {
            self.selectedEngine = self.searchEngine.engine
        }
    }
}

struct SearchEngineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchEngineDetailView( searchEngine: SearchEngineChoice(), selectedEngine: "Google")
    }
}
