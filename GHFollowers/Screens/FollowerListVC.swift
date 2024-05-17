//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import UIKit

class FollowerListVC: UIViewController {
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, error in
            if let error {
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "Ok")
                print("Error: \(error)")
            }

            if let followers {
                print("\(followers.count)")
                print("followers:")
                for follower in followers {
                    print(follower.login)
                }
            }
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
