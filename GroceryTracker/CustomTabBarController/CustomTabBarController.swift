//
//  CustomTabBarController.swift
//  GroceryTracker
//
//  Created by Hitesh Madaan on 03/04/25.
//

import UIKit

class CustomTabBarController: UITabBarController {
    let customTabBarHeight: CGFloat = 60 // Set desired height
    let horizontalPadding: CGFloat = 16  // Padding on both sides

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Calculate dynamic width based on device width with padding
        let customTabBarWidth = view.frame.width - (horizontalPadding * 2)
        
        // Adjust Tab Bar Frame
        var tabFrame = tabBar.frame
        tabFrame.size.height = customTabBarHeight
        tabFrame.size.width = customTabBarWidth
        
        // Center horizontally
        tabFrame.origin.x = horizontalPadding
        
        // Lift the tab bar up (considering Safe Area insets)
        if let window = UIApplication.shared.windows.first {
            let bottomPadding = window.safeAreaInsets.bottom
            tabFrame.origin.y = view.frame.height - (customTabBarHeight + bottomPadding + 10) // 10 for floating effect
        }
        
        tabBar.frame = tabFrame
    }
}
