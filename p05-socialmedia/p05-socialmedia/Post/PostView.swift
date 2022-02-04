//
//  PostView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI

struct PostView: View {
    @State var post: Post

    var body: some View {
            VStack {
                HStack {
                    Image(post.authorImageAddress)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                        .padding(.vertical)
                    
                    Text(post.authorName)
                    
                    Text("@" + post.authorUsername)
                        .fontWeight(.thin)
                    
                    Spacer()
                    
                    Text(post.formattedDate)
                        .fontWeight(.thin)
                }
                .padding(.horizontal)
                
                Text(post.postContent)
                    .padding(.horizontal)
                
                HStack {
                    
                    Button {
                        if post.likedByUser == false {
                            post.likedByUser = true
                            post.likeCount += 1
                        } else {
                            post.likedByUser = false
                            post.likeCount -= 1
                        }
                        
                    } label: {
                        Image(systemName: post.likedByUser ? "heart.fill": "heart")
                    }
                    .accentColor(post.likedByUser ? .red: .primary)
                    
                    Text("\(post.likeCount)")
                        .fontWeight(.thin)
                   
                    NavigationLink {
                        CommentsView()
                    } label: {
                            Image(systemName: "message")
                        }
                        .accentColor(.primary)

                    

                    Text("\(post.commentCount)")
                        .fontWeight(.thin)
                    
                    Spacer()
                    
                    Button {
                        /// Add logic to share post
                    } label: {
                        Image(systemName: "paperplane")
                            .padding(.vertical)
                    }
                    .accentColor(.primary)

                }
                .padding(.horizontal)
                
                Divider()
                    .background(Color.white)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: .example)
            .preferredColorScheme(.light)
            .bothColorSchemes()
    }
}
