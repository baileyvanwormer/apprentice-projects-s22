//
//  ContentView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeFeedView()
            }
            .tabItem {
                VStack {
                    Image(systemName: "house")
                    Text("Home")
                }
            }
            
            NavigationView {
                ProfileView()
            }
            .tabItem {
                VStack {
                    Image(systemName: "person")
                    Text("Profile")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().bothColorSchemes()
    }
}
