//
//  CountryDestinationView.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct CountryDestinationView: View {
    var country: Country

    var body: some View {
        VStack {
            Image(country.image)
            Text(country.name)
        }
    }
}

struct CountryDestinationView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDestinationView(country: Country(name: "Australia", image: "Australia"))
    }
}
