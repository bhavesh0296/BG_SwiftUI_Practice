//
//  PickerInForm.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 08/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct PickerInForm: View {

    private var coffeeList: [String] = ["Black Coeffe",
                                       "Lattte",
                                       "Cappaciono",
                                       "Cold Coeffee"]

    @State private var coffeePickerIndex: Int = 0

    var body: some View {

        NavigationView {
            Form {
                Picker(selection: $coffeePickerIndex, label: Text("Picker")) {
                    ForEach(0..<coffeeList.count) { index in
                        Text(self.coffeeList[index])
                            .tag(index)
                    }
                }.labelsHidden()
            }.navigationBarTitle("Form Picker")
        }


    }
}

struct PickerInForm_Previews: PreviewProvider {
    static var previews: some View {
        PickerInForm()
    }
}
