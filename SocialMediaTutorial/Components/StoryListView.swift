//
//  StoryListView.swift
//  SocialMediaTutorial
//
//  Created by Eymen on 14.07.2023.
//

import SwiftUI

struct StoryListView: View {
    @ObservedObject var postData = ReadJsonData() // Observed object for reading JSON data
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) { // Horizontal scroll view for displaying story cards
            HStack {
                AddStoryCard() // Display the "Add Story" card
                ForEach(postData.posts) { post in // Iterate over each post in the data
                    StoryCard(image: post.profile_img) // Display a story card with the post's profile image
                }
            }
        }
        .offset(x: 15) // Offset the scroll view horizontally by 15 points
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}

