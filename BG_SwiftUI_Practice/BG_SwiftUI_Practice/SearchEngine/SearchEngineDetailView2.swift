//
//  SearchEngineDetailView2.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SearchEngineDetailView2: View {

    var searchEngineChoice: SearchEngineChoice

    var body: some View {
        List {
            ForEach(searchEngineChoice.searchEngines, id: \.self) { engine in
                Button(action: {
                    //
                    self.searchEngineChoice.engine = engine

                }) {
                    HStack {
                        Text(engine)
                        Image(systemName:
                            self.searchEngineChoice.engine == engine ?
                            "checkmark.square" : "square")
                    }
                }
            }
        }

    }
}
//
//struct SearchEngineDetailView2_Previews: PreviewProvider {
//    static var previews: some View {
//       
//    }
//}
