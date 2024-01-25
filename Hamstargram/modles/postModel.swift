//
//  postModel.swift
//  Hamstargram
//
//  Created by Ahmed Elhasan on 2024-01-24.
//

import Foundation
import Observation

@Observable
class PostModel: Identifiable {
    let id = UUID().uuidString
    let user: UserModel
    let description: String
    let imageUrl: URL?
    let likedByUser: Bool
    var likes: Int
    
    init (post: PostData, user: UserModel, baseUrl: String){
        self.user = user
        description = post.description
        likedByUser = post.likedByUser
        likes = post.likes
        imageUrl = URL(string: baseUrl + post.url)
    }
}
