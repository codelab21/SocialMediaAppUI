//
//  TabbarView.swift
//  SocialMediaTutorial
//
//  Created by Eymen on 14.07.2023.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "square.stack.fill") // Tab icon for HomeView
                }
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass") // Tab icon for Search View
                }
            Text("New Post")
                .tabItem {
                    Image(systemName: "square.and.pencil") // Tab icon for New Post
                }
            Text("Profile View")
                .tabItem {
                    Image(systemName:  "person") // Tab icon for Profile View
                }
        }
        .accentColor(.brown) // Accent color for the TabView
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
