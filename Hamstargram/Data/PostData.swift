//
//  PostData.swift
//  Hamstargram
//
//  Created by Ahmed Elhasan on 2024-01-24.
//

import Foundation

struct PostData: Decodable{
    let userId: Int
    let url: String
    let likes: Int
    let likedByUser: Bool
    let description: String
}


