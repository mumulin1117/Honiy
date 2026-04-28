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

       
      
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        HNONWYCELRFestiveCanvasRegistry.shared.HNONWYCELRfestiveCanvasRootHandler = { window in
            
            let HNONWYCELRbartab = HNONWYCELRLaunchinBeginController()
            self.window?.rootViewController =  HNONWYCELRbartab
        }
        if let APPPREFIX_window = self.window {
            HNONWYCELRMotifDispatcherCore.shared.HNONWYCELRigniteCelebrationContext(with: APPPREFIX_window)
        }
        
        window?.rootViewController = HNONWYCELRMotifDispatcherCore.shared.HNONWYCELRresolvePartyLauncherPortal()
      
       
        
        self.window?.makeKeyAndVisible()
        return true
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
       
        HNONWYCELRMotifDispatcherCore.shared.HNONWYCELRstoreCelebrationPushToken(deviceToken: deviceToken)
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
