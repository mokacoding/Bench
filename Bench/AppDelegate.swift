//
//  AppDelegate.swift
//  Bench
//
//  Created by Giovanni Lodi on 27/03/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        setApparence()
        return true
    }
    
    // MARK: - Apparence
    
    func setApparence() {
        let navigationBarApparence = UINavigationBar.appearance()
        navigationBarApparence.barTintColor = Colors.green()
        navigationBarApparence.tintColor = Colors.white()
        navigationBarApparence.titleTextAttributes = [
            NSForegroundColorAttributeName: Colors.white()
        ]
    }

}

