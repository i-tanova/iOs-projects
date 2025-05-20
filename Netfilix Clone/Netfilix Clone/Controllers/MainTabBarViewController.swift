//
//  MainTabViewController.swift
//  Netfilix Clone
//
//  Created by Ivana Tanova on 18/05/2025.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        tabBar.tintColor = .label
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.title = "Home"
        
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc2.title = "Upcoming"
        
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.title = "Search"
        
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        vc4.title = "Downloads"
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }

}
