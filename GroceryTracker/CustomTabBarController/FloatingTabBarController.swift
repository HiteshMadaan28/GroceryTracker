//
//  FloatingTabBarController.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 02/04/25.
//


import SwiftUI

struct FloatingTabBarController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UITabBarController {
        let tabBarController = CustomTabBarController() // Use CustomTabBarController

        // Create View Controllers
        let homeVC = UIHostingController(rootView: HomeContentView())
        let favoritesVC = UIHostingController(rootView: FavoritesView())
        let scanVC = UIHostingController(rootView: ScanView()) // Floating button action
        let notificationsVC = UIHostingController(rootView: NotificationsView())
        let profileVC = UIHostingController(rootView: ProfileView())

        // Set Tab Items
        homeVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 0)
        favoritesVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "heart"), tag: 1)
        notificationsVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "bell"), tag: 2)
        profileVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person"), tag: 3)

        tabBarController.viewControllers = [homeVC, favoritesVC, scanVC, notificationsVC, profileVC]

        // Disable middle tab item (floating button)
        if let items = tabBarController.tabBar.items {
            items[2].isEnabled = false

            // Move Icons Slightly Up
            for item in items {
                item.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -3)
                item.imageInsets = UIEdgeInsets(top: -3, left: 0, bottom: 3, right: 0)
            }
        }

        // Custom Tab Bar Styling
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial) // Blur effect
        appearance.backgroundColor = UIColor.black
        appearance.shadowColor = UIColor.clear // Remove default shadow

        tabBarController.tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBarController.tabBar.scrollEdgeAppearance = appearance
        }

        tabBarController.tabBar.tintColor = UIColor.green
        tabBarController.tabBar.unselectedItemTintColor = UIColor.gray

        // Floating Effect
        tabBarController.tabBar.layer.cornerRadius = 30
        tabBarController.tabBar.layer.masksToBounds = true
        tabBarController.tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBarController.tabBar.layer.shadowOpacity = 0.2
        tabBarController.tabBar.layer.shadowRadius = 10
        tabBarController.tabBar.layer.shadowOffset = CGSize(width: 0, height: 5)

        return tabBarController
    }

    func updateUIViewController(_ uiViewController: UITabBarController, context: Context) {}
}




