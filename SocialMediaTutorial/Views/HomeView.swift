//
//  HomeView.swift
//  SocialMediaTutorial
//
//  Created by Eymen on 14.07.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                StoryListView() // Display the list of stories
                PostListView() // Display the list of posts
            }
            .navigationTitle("CodeLab") // Set the navigation title
            .navigationBarItems(leading: Image(systemName: "pencil.and.outline"), trailing: Image(systemName: "bell.badge.fill")) // Add leading and trailing navigation bar items
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

