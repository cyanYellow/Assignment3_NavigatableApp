//
//  AlbumPageView.swift
//  Project3_NavigatableApp
//
//  Created by Willie Green on 9/13/23.
//

import SwiftUI

struct AlbumPageView: View {
    var body: some View {
        
        @State var IsAlbumPickerShowing = false
        @State var AlbumSelectedImage: UIImage?
        
        VStack{
            
            Text("Albums")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Spacer()
            
            if AlbumSelectedImage != nil {
                Image(uiImage: AlbumSelectedImage!)
                    .resizable()
                
            }
            
            Button{
                IsAlbumPickerShowing = true
                
            } label: {
                VStack{
                    Image(systemName: "plus.circle")
                    Text("Add Photos")
                }
            }
            Spacer()
        }
        .sheet(isPresented: $IsAlbumPickerShowing, onDismiss: nil){
            ImagePicker(selectedImage: $AlbumSelectedImage, isPickerShowing: $IsAlbumPickerShowing)
        }
        
    }
}
    

struct AlbumPageView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumPageView()
    }
}
