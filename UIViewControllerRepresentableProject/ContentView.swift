//
//  ContentView.swift
//  UIViewControllerRepresentableProject
//
//  Created by Łukasz Adamczak on 07/09/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePickerView: Bool = false
    @State private var selectedImage: UIImage?
    var body: some View {
        VStack {
            Text("Choose an Image!")
                .font(.largeTitle)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .padding()
                .onTapGesture {
                    showImagePickerView = true
                }
            Spacer()
            Spacer()
        }
        .sheet(isPresented: $showImagePickerView) {
            ImagePickerView()
        }
    }
    
    var imageView: Image {
        guard let selectedImage = selectedImage else {
            return Image(systemName: "photo")
        }
        return Image(uiImage: selectedImage)
    }
}

#Preview {
    ContentView()
}
