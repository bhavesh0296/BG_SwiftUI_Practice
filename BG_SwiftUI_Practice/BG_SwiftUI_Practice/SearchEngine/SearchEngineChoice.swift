//
//  SearchEngineChoice.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import Foundation

class SearchEngineChoice: ObservableObject {
    var searchEngines = ["Google", "Yahoo", "Bing"]
    @Published var engine = "Google"
}
