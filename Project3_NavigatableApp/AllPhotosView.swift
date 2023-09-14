//
//  AllPhotsPageView.swift
//  Project3_NavigatableApp
//
//  Created by Willie Green on 9/13/23.
//

import SwiftUI

struct AllPhotosView: View {
    
    @State var IsAllPickerShowing = false
    @State var AllSelectedImage: UIImage?
    
    var body: some View {
        
        VStack{
            
            Text("All Photos")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Spacer()

                
            
            if AllSelectedImage != nil {
                Image(uiImage: AllSelectedImage!)
                    .resizable()
                    
            }
            
            Button{
                IsAllPickerShowing = true
                
            } label: {
                VStack{
                    Image(systemName: "plus.circle")
                    Text("Add Photos")
                }
            }
            Spacer()
        }
        .sheet(isPresented: $IsAllPickerShowing, onDismiss: nil){
            ImagePicker(selectedImage: $AllSelectedImage, isPickerShowing: $IsAllPickerShowing)
        }
        
    }
    
    
    struct AllPhotosView_Previews: PreviewProvider {
        static var previews: some View {
            AllPhotosView()
        }
    }
}
