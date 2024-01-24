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
    private let baseUrl = ""
    private let feedUrl = "feed.json"
    var isLoading = false
    
    func loadFeed() async throws {
        guard let url = URL(string: baseUrl + feedUrl) else {
            return
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        do {
            let feed = try JSONDecoder().decode(FeedData.self, from: data)
            print(feed)
        } catch {
            print(error)
        }
        isLoading = false
    }
}
