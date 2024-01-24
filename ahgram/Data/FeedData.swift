//
//  FeedData.swift
//  Hamstargram
//
//  Created by Ahmed Elhasan on 2024-01-24.
//

import Foundation

struct FeedData: Decodable{
    let users: [UserData]
    let post: [PostData]
    
}
