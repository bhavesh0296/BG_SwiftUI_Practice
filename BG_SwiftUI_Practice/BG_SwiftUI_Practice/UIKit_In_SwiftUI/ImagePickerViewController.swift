//
//  ImagePickerViewController.swift
//  BG_SwiftUI_Practice
//
//  Created by bhavesh on 11/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import UIKit
import SwiftUI

struct ImagePickerViewController: UIViewControllerRepresentable {

    @Binding var image: UIImage?


    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

        var parent: ImagePickerViewController

        init(_ parent: ImagePickerViewController) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = uiImage
            }
            picker.dismiss(animated: true, completion: nil)
        }
    }


    typealias UIViewControllerType = UIImagePickerController


    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

}


struct ImagePickerDemo: View {

    @State private var uiImage: UIImage?

    @State private var photoImage: Image?

    @State private var isDisplaySheet: Bool = false

    var body: some View {
        VStack {
            Button(action: {

                self.isDisplaySheet = true

            }) {
                Text("Select Photo")
            }

            photoImage?
                .resizable()
                .scaledToFit()
        }.sheet(isPresented: $isDisplaySheet, onDismiss: {
            self.getImage()
        }) {
            ImagePickerViewController(image: self.$uiImage)
        }
    }

    func getImage() {
        if let image = uiImage {
            photoImage = Image(uiImage: image)
        }
    }
}
