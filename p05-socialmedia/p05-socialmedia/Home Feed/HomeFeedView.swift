//
//  HomeFeedView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/1/22.
//

import SwiftUI

struct HomeFeedView: View {
    let posts: [Post] = PostList.defaultPosts
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    ForEach(posts) { post in
                        PostView(post: post)
                    }
                }
                .navigationBarTitle("bluebird")
                }
        }
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeFeedView()
        }
    }
}
