//
//  AppDelegate.swift
//  DeepLinkPractice1
//
//  Created by 강성찬 on 2024-07-16.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
              let url = userActivity.webpageURL else {
            return false
        }
        
        DeepLinkManager.shared.checkDeepLink(url: url)
        return true
    }
}

