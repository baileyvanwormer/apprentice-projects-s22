//
//  ProfileView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileView: View {
    
    let posts: [Post] = PostList.defaultPosts
    let name: String = "App Team Carolina"
    let username: String = "appteamcarolina"
    let profileImageAddress: String = "appteam" // will eventually be url
    
    let userPosts: [Post] = PostList.defaultPosts

    var body: some View {
        // MARK: Profile Pic
        
        ScrollView {
            VStack {
                Image(profileImageAddress)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 120, alignment: .center)
                .clipShape(Circle())
                .padding(.top)
             
                
                // MARK: Name
                Text(name)
                    .font(.title2)
                    .bold()
            
                // MARK: Username
                Text("@" + username)
                    .italic()
                    .padding(.bottom)
                
                Spacer()
                
                
                NavigationLink {
                    ProfileSettings()
                } label: {
                    Text("Edit Profile")
                }
                .accentColor(.purple)
                
                Divider()
                
                
                ForEach(userPosts) { Post in
                    PostView(post: Post)
                    }

            }
        }
            .navigationBarTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}
