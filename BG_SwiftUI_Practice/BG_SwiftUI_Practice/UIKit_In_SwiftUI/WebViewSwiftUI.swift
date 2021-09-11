//
//  WebViewSwiftUI.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI
import WebKit

struct WebViewSwiftUI: UIViewRepresentable {

    typealias UIViewType = WKWebView

    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }

}

struct WebViewDemo: View {

    var body: some View {
        WebViewSwiftUI(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}
