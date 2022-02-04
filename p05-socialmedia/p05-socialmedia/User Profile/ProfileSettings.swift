//
//  ProfileSettings.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileSettings: View {
    
    @State var name: String = ""
    @State var username: String = ""
    @State var profileImageAddress: String = "appteam" // will eventually be url
    
    @State var userPosts: [Post] = PostList.defaultPosts
    
    var body: some View {
        VStack {
            
            Image(profileImageAddress)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 120, alignment: .center)
            .clipShape(Circle())
            .padding(.top)
            
            Button {
                // Edit pic in database
            } label: {
                Text("Edit Picture")
            }
            .padding()

            
                
                TextField("Edit Name", text: $name)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            
                
                
                TextField("Edit Username", text: $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            
            Button {
                // Delete Account
            } label: {
                Text("Delete Account")
            }
            .accentColor(.red)
            
            
            


            
            
         
            
                
        
            Spacer()

        }
        .navigationBarTitle("Edit Profile")
        .navigationBarItems(trailing:
                                Button {
                                    // Sign out
                                } label: {
                                    Text("Sign Out")
                                }
                                .padding())
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileSettings()
        }
    }
}
