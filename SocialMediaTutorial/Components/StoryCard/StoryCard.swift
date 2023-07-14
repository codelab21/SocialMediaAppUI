//
//  StoryCard.swift
//  SocialMediaTutorial
//
//  Created by Eymen on 14.07.2023.
//

import SwiftUI

struct StoryCard: View {
    let image: String // Image name or URL
    
    var body: some View {
        VStack {
            Image(image) // Display the image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60) // Set the size of the image
                .clipShape(Circle()) // Clip the image into a circle shape
                .overlay(
                    Circle()
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                )
                // Add an overlay circle stroke with a gradient color
        }
    }
}

