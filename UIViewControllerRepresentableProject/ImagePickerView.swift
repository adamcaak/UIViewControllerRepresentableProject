//
//  ImagePickerView.swift
//  UIViewControllerRepresentableProject
//
//  Created by Łukasz Adamczak on 07/09/2025.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage
    @Environment(\.dismiss) private var dismiss
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePickerView
        init(parent: ImagePickerView) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[UIImagePickerController.InfoKey.originalImage] else { return }
            parent.selectedImage = image as! UIImage
            dismiss()
        }
    }
    
    func makeUIViewController(context: Self.Context) -> UIImagePickerController {
        let imagePickerVC = UIImagePickerController()
        imagePickerVC.delegate = context.coordinator
        return imagePickerVC
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
