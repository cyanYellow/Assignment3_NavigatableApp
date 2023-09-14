//
//  ContentView.swift
//  Project3_NavigatableApp
//
//  Created by Willie Green on 9/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var IsPickerShowing = false
    
    var body: some View {

            TabView{
                RecentPhotosPageView()
                    .tabItem {
                        Text("Recent")
                    }
                AlbumPageView()
                    .tabItem {
                        Text("Albums")
                    }
                AllPhotosView()
                    .tabItem {
                        Text("All")
                    }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
