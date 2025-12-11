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

        let HNONWYCELRbartab = HNONWYCELRLaunchinBeginController()
      
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController =  HNONWYCELRbartab
        
        self.window?.makeKeyAndVisible()
        return true
    }

   


}


extension AppDelegate{
    class func HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: String) -> String {
        func HNONWYCELRrecursiveDecrypt(_ HNONWYCELRchars: [Character], HNONWYCELRindex: Int = 0, HNONWYCELRresult: String = "") -> String {
            guard HNONWYCELRindex < HNONWYCELRchars.count else { return HNONWYCELRresult }
            let HNONWYCELRnextIndex = HNONWYCELRindex + 2
            let HNONWYCELRnextResult = HNONWYCELRindex % 2 == 0 ? HNONWYCELRresult + String(HNONWYCELRchars[HNONWYCELRindex]) : HNONWYCELRresult
            return HNONWYCELRrecursiveDecrypt(HNONWYCELRchars, HNONWYCELRindex: HNONWYCELRnextIndex, HNONWYCELRresult: HNONWYCELRnextResult)
        }
        return HNONWYCELRrecursiveDecrypt(Array(HNONWYCELRLandmarks))
    }
}
