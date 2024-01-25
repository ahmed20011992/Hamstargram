//
//  FeedModel.swift
//  Hamstargram
//
//  Created by Ahmed Elhasan on 2024-01-24.
//

import Foundation
import Observation

@Observable

class FeedModel{
    private let baseUrl = "/Users/elah22nv/Documents/GitHub/ios-todo-list-ahmed20011992/yosef"
    private let feedUrl = "feed.json"
    
    var posts: [PostModel] = []
    var users: [UserModel] = []
    var isLoading = false
    
    private func getUserById(_ id: Int) -> UserModel? {
        users.first(where: {$0.id == id})
    }
    
    
    
    func loadFeed() async throws {
        guard let url = URL(string: baseUrl + feedUrl) else {
            return
        }
        isLoading = true
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
            let feed = try JSONDecoder().decode(FeedData.self, from: data)
            users = feed.users.map { UserModel(user: $0, baseUrl: baseUrl) }
            users = feed.users.map { user in
                return UserModel(user: user, baseUrl: baseUrl)
            }

            posts = feed.post.compactMap({ postData in
                guard let user = getUserById(postData.userId) else {
                    return nil
                }
                return PostModel(post: postData, user : user, baseUrl: baseUrl)
            })
            
        } catch {
            print(error)
        }
        isLoading = false
    }
}
