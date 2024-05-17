//
//  UserModel.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import Foundation

struct UserModel: Codable {
    let login: String
    let avatarURL: String
    let name: String?
    let location: String?
    let bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlURl: String
    let following: Int
    let followers: Int
    let createdAt: String
}
