//
//  ImagePickerView.swift
//  UIViewControllerRepresentableProject
//
//  Created by Łukasz Adamczak on 07/09/2025.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    class Coordinator {
        let parent: ImagePickerView
        init(parent: ImagePickerView) {
            self.parent = parent
        }
    }
    
    func makeUIViewController(context: Self.Context) -> UIImagePickerController {
        return UIImagePickerController()
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        return
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ImagePickerView()
}
