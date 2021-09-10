//
//  SectionCountryListView.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct SectionCountryListView: View {

    @State var countyDict = [
        "Africa": ["Algeria", "Angola"],
        "Asia": ["China", "Cyprus"],
        "Europe":["Lithuania","Luxembourg"],
        "North America":["Costa Rica","Cuba"],
        "South America":["Brazil ","Peru"],
        "Oceania/Australia":["Fiji ","New Zealand"],
        ].sorted { $0.key < $1.key }


    var body: some View {
        List {
            ForEach(countyDict, id: \.0) { index, item in
                Section(header: EmptyView()) {
                    ForEach(item, id: \.self) { country in
                        Text(country)
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}


struct SectionCountryListView_Previews: PreviewProvider {
    static var previews: some View {
         Group {
             SectionCountryListView()
                 .environment(\.colorScheme, .light)

            SectionCountryListView()
                 .environment(\.colorScheme, .dark)
         }
    }
}
