//
//  AlbumPageView.swift
//  Project3_NavigatableApp
//
//  Created by Willie Green on 9/13/23.
//

import SwiftUI

struct RecentPhotosPageView: View {
    var body: some View {
        @State var IsPickerShowing = false
        @State var selectedImage: UIImage?
        
        VStack{
            
            Text("Recent")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Spacer()
            
            if selectedImage != nil {
                Image(uiImage: selectedImage!)
                    .resizable()
                
            }
            
            Button{
                IsPickerShowing = true
                
            } label: {
                VStack{
                    Image(systemName: "plus.circle")
                    Text("Add Photos")
                }
            }
            Spacer()
        }
        .sheet(isPresented: $IsPickerShowing, onDismiss: nil){
            ImagePicker(selectedImage: $selectedImage, isPickerShowing: $IsPickerShowing)
        }
        
    }
}
    

struct RecentPhotosPageView_Previews: PreviewProvider {
    static var previews: some View {
        RecentPhotosPageView()
    }
}
