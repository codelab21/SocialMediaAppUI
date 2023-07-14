//
//  FetchDataJson.swift
//  SocialMediaTutorial
//
//  Created by Eymen on 14.07.2023.
//

import Foundation

// Struct for representing a post
struct Post: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case image
        case like_count
        case comment_count
        case view_count
        case description
        case profile_img
        case profile_name
        case profile_id
    }
    
    var id = UUID() // Unique identifier for the post
    var image: String // Image name or URL
    var like_count: Int // Number of likes
    var comment_count: Int // Number of comments
    var view_count: Int // Number of views
    var description: String // Description of the post
    var profile_img: String // Profile image name or URL
    var profile_name: String // Profile name
    var profile_id: String // Profile ID
}

// Class for reading JSON data
class ReadJsonData: ObservableObject {
    @Published var posts = [Post]() // Array of posts
    
    init() {
        loadData() // Load the JSON data upon initialization
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "posts", withExtension: "json") else {
            print("json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let posts = try? JSONDecoder().decode([Post].self, from: data!)
        
        self.posts = posts! // Update the posts array with the decoded data
    }
}
