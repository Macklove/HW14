//
//  AppDelegate.swift
//  HW14
//
//  Created by  Евгений on 10.06.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // MARK: - Elements
    
    private let appearance: UINavigationBarAppearance =  {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        return appearance
    }()
    
    private let appearanceTabBar: UITabBarAppearance =  {
        let appearanceTabBar = UITabBarAppearance()
        appearanceTabBar.configureWithOpaqueBackground()
        appearanceTabBar.backgroundColor = .white
        return appearanceTabBar
    }()
    
    // MARK: - Private func
    
    private func settingsBar() {
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        UITabBar.appearance().standardAppearance = appearanceTabBar
        UITabBar.appearance().scrollEdgeAppearance = appearanceTabBar
    }
    
    // MARK: - Main func

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        settingsBar()
        
        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = .lightGray
        // NavigationController - "Медиатека"
        let firstViewController = MediaLibraryViewController()
        let firstNavigationController = UINavigationController(rootViewController: firstViewController)
        firstViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.on.rectangle"), tag: 0)
        // NavigationController - "Для Вас"
        let secondViewController = ForYouViewController()
        let secondNavigationController = UINavigationController(rootViewController: secondViewController)
        secondViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "heart.text.square.fill"), tag: 1)
        // NavigationController - "Альбомы"
        let thirdViewController = AlbumsViewController()
        let thirdNavigationController = UINavigationController(rootViewController: thirdViewController)
        thirdViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "square.stack.fill"), tag: 2)
        // NavigationController - "Поиск"
        let fourthViewController = SearchViewController()
        let fourthNavigationController = UINavigationController(rootViewController: fourthViewController)
        fourthViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(named: "search"), tag: 3)
        // TabBar
        tabBarController.setViewControllers([
            firstNavigationController,
            secondNavigationController,
            thirdNavigationController,
            fourthNavigationController
        ], animated: true)
        tabBarController.selectedIndex = 2
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

