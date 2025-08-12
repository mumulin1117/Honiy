//
//  AppDelegate.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/9.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        

        let bartab = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "OJaubKeou")
      
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController =  bartab
        self.window?.makeKeyAndVisible()
        return true
    }

   


}

