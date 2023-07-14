//
//  AddStoryCard.swift
//  SocialMediaTutorial
//
//  Created by Eymen on 14.07.2023.
//

import SwiftUI

struct AddStoryCard: View {
    var body: some View {
        VStack {
            Image(systemName: "plus.circle")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(Color.blue)
                .clipShape(Circle())
        }
    }
}

struct AddStoryCard_Previews: PreviewProvider {
    static var previews: some View {
        AddStoryCard()
    }
}
