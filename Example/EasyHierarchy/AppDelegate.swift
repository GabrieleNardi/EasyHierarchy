//
//  AppDelegate.swift
//  EasyHierarchy
//
//  Created by Gabe on 03/27/2022.
//  Copyright (c) 2022 Gabe. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        window.rootViewController = UINavigationController(rootViewController: ViewController())
        self.window = window
        self.window?.makeKeyAndVisible()
        return true
    }
}

