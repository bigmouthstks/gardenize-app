//
//  AppDelegate.swift
//  Gardenize
//
//  Created by Benjamin Cáceres on 26-04-21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
               let storyboard = UIStoryboard(name: "Login", bundle: nil)
               let homeVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
               let navigationController = UINavigationController()
               
               window?.rootViewController = navigationController
               navigationController.pushViewController(homeVC, animated: true)
               window?.makeKeyAndVisible()
        
        return true
    }
}
