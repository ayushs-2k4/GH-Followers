//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/"
    let usersURL = "https://api.github.com/users/"

    private init() {}

    func getFollowers(for username: String, perPage: Int = 100, page: Int, completion: @escaping ([FollowerModel]?, String?) -> Void) {
        let endPoint = usersURL + "\(username)/followers?per_page=\(perPage)&page=\(page)"

        guard let url = URL(string: endPoint) else {
            completion(nil, "This username created an invalid request. Please try again.")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(nil, "Unable to complete your refuest. Please check your internet connection")
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil, "Invalid response from the server. Please try again.")
                return
            }

            guard let data else {
                completion(nil, "The data received from the server the invalid. Please try again.")
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase

                let followers = try decoder.decode([FollowerModel].self, from: data)
                completion(followers, nil)
            } catch {
                completion(nil, "The data received from the server the invalid. Please try again.")
                return
            }
        }

        task.resume()
    }
}
