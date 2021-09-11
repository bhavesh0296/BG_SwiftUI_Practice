//
//  CountryList.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 08/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct CountryListView: View {

    @State var countryList = [Country(name: "Australia", image: "Australia"),
                              Country(name: "Belgium", image: "Belgium"),
                              Country(name: "Canada", image: "Canada"),
                              Country(name: "Denmark", image: "Denmark"),
                              Country(name: "Finland", image: "Finland"),
                              Country(name: "Germany", image: "Germany"),
                              Country(name: "Japan", image: "Japan"),
                              Country(name: "Norway", image: "Norway"),
                              Country(name: "United State Emirated", image: "United-States")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(countryList, id: \.id) { country in

                    NavigationLink(destination: CountryDestinationView(country: country)) {
                        CountryView(country: country)
                    }

                }.onDelete { indexSet in
                    self.delete(at: indexSet)
                }
//                .onMove { (source, destination) in
//                    self.move(from: source, to: destination)
//                }
                .onMove(perform: move)

            }.navigationBarTitle("Country List")
                .navigationBarItems( leading: EditButton(),
                    trailing: Button(action: {
                    self.addCountry()
                }, label: { Text("Add Country") } )
            )

        }
    }

    func addCountry(){
        countryList.append(Country(name: "India", image: "India"))
    }

    func delete(at indexSet: IndexSet) {
        countryList.remove(atOffsets: indexSet)
    }

    func move(_ source: IndexSet, _ destination: Int) {
        countryList.move(fromOffsets: source, toOffset: destination)
    }

}

struct CountryList_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}
