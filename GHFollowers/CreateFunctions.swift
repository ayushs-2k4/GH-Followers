//
//  CreateFunctions.swift
//  GHFollowers
//
//  Created by Ayush Singhal on 17/05/24.
//

import UIKit

func createSearchNC() -> UINavigationController {
    let searchVC = SearchVC()
    searchVC.title = "Search"
    searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

    return UINavigationController(rootViewController: searchVC)
}

func createFavoritesNC() -> UINavigationController {
    let favoritesVC = FavoritesListVC()
    favoritesVC.title = "Favorites"
    favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

    return UINavigationController(rootViewController: favoritesVC)
}

func createTabbar() -> UITabBarController {
    let tabbar = UITabBarController()
    UITabBar.appearance().tintColor = .systemGreen

    tabbar.viewControllers = [createSearchNC(), createFavoritesNC()]

    return tabbar
}

func configureNavigationBar() {
    UINavigationBar.appearance().tintColor = .systemGreen
}

#Preview("Complete App") {
    createTabbar()
}
