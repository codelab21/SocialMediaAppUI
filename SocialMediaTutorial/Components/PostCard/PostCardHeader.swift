//
//  PostCardHeader.swift
//  SocialMediaTutorial
//
//  Created by Eymen on 14.07.2023.
//

import SwiftUI

struct PostCardHeader: View {
    
    let profile_img: String
    let profile_name: String
    let profile_id: String
    
    var body: some View {
        HStack {
            Image(profile_img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                Text(profile_name).bold()
                Text(profile_id)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
    }
}
