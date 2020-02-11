//
//  SceneDelegate.swift
//  Bits
//
//  Created by Wouter Willebrands on 11/02/2020.
//  Copyright © 2020 CodingCondor. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createTabBarController()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }
    
    private func createSavedBitsNavigationController() -> UINavigationController {
        let savedEntriesViewController = SavedBitsViewController()
        savedEntriesViewController.title = "Saved 'Bits"
        savedEntriesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: savedEntriesViewController)
    }
    
    private func createBitNavigationController() -> UINavigationController {
        let entryViewController = BitViewController()
        entryViewController.title = "Add 'Bit"
        entryViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        return UINavigationController(rootViewController: entryViewController)
    }
    
    private func createTabBarController() -> UITabBarController {
        let tabBar = UITabBarController()
        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.barTintColor = .black
        tabBarAppearance.tintColor = .systemRed
        tabBarAppearance.isTranslucent = false
        tabBar.viewControllers = [createSavedBitsNavigationController(), createBitNavigationController()]
        return tabBar
    }
    
    private func configureNavigationBar() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.backgroundColor = .systemGray6
        //        navBarAppearance.isTranslucent = false
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

