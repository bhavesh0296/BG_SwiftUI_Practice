//
//  CountryView.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 08/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct CountryView: View {
    var country: Country

    var body: some View {
        HStack {
            Image(country.image)
            Text(country.name)
        }
    }
}
