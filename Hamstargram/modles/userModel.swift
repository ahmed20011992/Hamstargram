//
//  userModel.swift
//  Hamstargram
//
//  Created by Ahmed Elhasan on 2024-01-24.
//

import Foundation
import Observation

@Observable
class UserModel{
    let id : Int
    let name: String
    let imageUrl: URL?
    
    init(user: UserData, baserUrl: String){
        id = user.id
        name = user.name
        imageUrl = URL(string: baserUrl + user.url)
    }
}
