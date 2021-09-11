//
//  ActivityIndicatorDemo.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import UIKit
import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {

    typealias UIViewType = UIActivityIndicatorView

    @Binding var isAnimating: Bool

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }

}


struct ActivityIndicatorDemo: View {

    @State var isAnimating: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                self.isAnimating.toggle()
            }) {
                Text(isAnimating ? "Stop" : "Start")
            }

            ActivityIndicatorView(isAnimating: $isAnimating)
        }

    }

}
