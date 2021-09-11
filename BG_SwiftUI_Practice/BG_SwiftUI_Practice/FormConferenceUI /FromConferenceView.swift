//
//  FromConferenceView.swift
//  BG_SwiftUI_Twitter_Card
//
//  Created by bhavesh on 10/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct FromConferenceView: View {

    @State var isShareFavSession = false

    var notificationList = ["All Sessions", "Favourite Sessions", "Important Sessions", "Introductory Sessions"]

    @State var selectedIndex = 0

    var body: some View {

        NavigationView {
            Form {

                Section(header: Text("Sessions")) {


                    Toggle(isOn: $isShareFavSession) {
                        Text("Share Favourited Sessions")
                    }




                    Picker(selection: $selectedIndex, label: Text("Display Notification")) {
                        ForEach(0..<notificationList.count) { index in
                            Text(self.notificationList[index])
                        }
                    }


                }

                Section(header: Text("Details")) {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text("DSL Conferences")
                    }

                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.1")
                    }

                    HStack {
                        Text("Developed By")
                        Spacer()
                        Text("Bhavesh")
                    }
                }

            }.navigationBarTitle("Conferences")
        }
    }
}

struct FromConferenceView_Previews: PreviewProvider {
    static var previews: some View {
        FromConferenceView()
    }
}
