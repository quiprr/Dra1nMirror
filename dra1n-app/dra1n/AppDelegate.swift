//
//  AppDelegate.swift
//  dra1n
//
//  Created by Charlie While on 11/07/2020.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch
        
        UIApplication.shared.applicationIconBadgeNumber = 0
        CepheiController.shared.set(key: "TimeLastOpened", object: NSDate())
        
        return true
    }
}

