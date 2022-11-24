//
//  AppDelegate.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = HomeVC(nibName: "HomeVC", bundle: nil)
//        let vc = SearchVC(nibName: "SearchVC", bundle: nil)
//        let vc = NotificationVC(nibName: "NotificationVC", bundle: nil)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()



        return true
    }

    
    
    


}

