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

    func getFollowers(for username: String, perPage: Int = 100, page: Int, completion: @escaping (Result<[FollowerModel], GFError>) -> Void) {
        let endPoint = usersURL + "\(username)/followers?per_page=\(perPage)&page=\(page)"

        guard let url = URL(string: endPoint) else {
            completion(.failure(.invalidUsername))
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(.failure(.unableToComplete))
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }

            guard let data else {
                completion(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase

                let followers = try decoder.decode([FollowerModel].self, from: data)
                completion(.success(followers))
            } catch {
                completion(.failure(.invalidData))
                return
            }
        }

        task.resume()
    }
}
