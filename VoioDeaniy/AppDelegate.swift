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
        
        let interactiveMaps = AppDelegate.unravelEncrypted(Landmarks: "Moagisn")
        
        let bartab = UIStoryboard(name: interactiveMaps, bundle: nil).instantiateViewController(identifier: "OJaubKeou")
      
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController =  bartab
        self.window?.makeKeyAndVisible()
        return true
    }

   


}


extension AppDelegate{
    class func unravelEncrypted(Landmarks: String) -> String {
        func recursiveDecrypt(_ chars: [Character], index: Int = 0, result: String = "") -> String {
            guard index < chars.count else { return result }
            let nextIndex = index + 2
            let nextResult = index % 2 == 0 ? result + String(chars[index]) : result
            return recursiveDecrypt(chars, index: nextIndex, result: nextResult)
        }
        return recursiveDecrypt(Array(Landmarks))
    }
}
