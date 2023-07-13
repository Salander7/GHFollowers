//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Deniz Dilbilir on 07/07/2023.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemPink
        viewControllers = [createSearchNC(), createFavoritesNC()]

}


func createSearchNC() -> UINavigationController {
  let searchVC = SearchVC()
    searchVC.title = "Search"
    searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
    
    return UINavigationController(rootViewController: searchVC)
    
}

func createFavoritesNC()-> UINavigationController {
    let favoritelistsVC = FavoritelistsVC()
    favoritelistsVC.title = "Favorites"
    favoritelistsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
    
    return UINavigationController(rootViewController: favoritelistsVC)
}


}
