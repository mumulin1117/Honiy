//
//  HNONWYCELRMainController.swift
//  VoioDeaniy
//
//  Created by  on 2025/12/10.
//

import UIKit

class HNONWYCELRStyleHighway:  UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
           super.viewDidLoad()
        HNONWYCELRsetupStyleHighway()
           self.delegate = self
       }

}


extension HNONWYCELRStyleHighway {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect HNONWYCELRviewController: UIViewController) -> Bool {
        // 检查是否点击的是中间的 Item（假设是第2个，索引从0开始）
        if HNONWYCELRviewController == tabBarController.viewControllers?[2] {
            HNONWYCELRwController()
            return false // 阻止默认的切换行为
        }
        return true
    }
    
    private func HNONWYCELRwController() {
        let HNONWYCELRVC = HNONWYCELRWardrobeVatontroller.init(HNONWYCELRstyleMotor: HNONWYCELRAtfitFryer.HNONWYCELRstyleMotor.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: "")) // 你要 present 的控制器
        HNONWYCELRVC.HNONWYCELRoutfitShroud = true
        HNONWYCELRVC.modalPresentationStyle = .fullScreen // 或 .pageSheet 等
        present(HNONWYCELRVC, animated: true, completion: nil)
    }
 func HNONWYCELRsetupStyleHighway() {
     // Set Tab Bar appearance
     let HNONWYCELRcongif = UITabBarAppearance()
     HNONWYCELRcongif.configureWithOpaqueBackground()
     HNONWYCELRcongif.backgroundColor = .white // <color key="backgroundColor" white="1"
     tabBar.standardAppearance = HNONWYCELRcongif
     if #available(iOS 15.0, *) {
         tabBar.scrollEdgeAppearance = HNONWYCELRcongif
     }

     // 1. Outfit Boulevardntroler (HNONWYCvirtual0 / HNONWYCELhairstyleGenerator0)
     let HNONWYCELRoutfitBoulevard = HNONWYCELROutfitBoulevardntroler()
     HNONWYCELRoutfitBoulevard.tabBarItem = UITabBarItem(
         title: "",
         image: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCvirtual0")?.withRenderingMode(.alwaysOriginal),
         selectedImage: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELhairstyleGenerator0")?.withRenderingMode(.alwaysOriginal)
     )

     // 2. Outfit Heater Controller (HNONWYCvirtual1 / HNONWYCELhairstyleGenerator1)
     let HNONWYCELRoutfitHeater = HNONWYCELROutfitHeaterController()
     HNONWYCELRoutfitHeater.tabBarItem = UITabBarItem(
         title: "",
         image: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform:"HNONWYCvirtual1")?.withRenderingMode(.alwaysOriginal),
         selectedImage: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELhairstyleGenerator1")?.withRenderingMode(.alwaysOriginal)
     )

     // 3. DefaultViewController3 (HNONWYCELhairstyleGenerator2 / HNONWYCELhairstyleGenerator2)
     let HNONWYCELRdefaultVC3 = UIViewController()
     HNONWYCELRdefaultVC3.tabBarItem = UITabBarItem(
         title: "",
         image: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELhairstyleGenerator2")?.withRenderingMode(.alwaysOriginal),
         selectedImage: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELhairstyleGenerator2")?.withRenderingMode(.alwaysOriginal)
     )

     // 4. outfitStylingController (VNS-kv-egy - Missing item in XML, using a default)
     let HNONWYCELRoutfitStyling = HNONWYCELRoutfitStylingController()
     HNONWYCELRoutfitStyling.tabBarItem = UITabBarItem(
        title: "",
     image: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCvirtual3")?.withRenderingMode(.alwaysOriginal), // Image missing in XML, set to nil
        selectedImage: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELhairstyleGenerator3")?.withRenderingMode(.alwaysOriginal)
     )

     // 5. DefaultViewController5 (ACq-Oi-3Wd - Missing scene/item in XML, using a default)
     let HNONWYCELRltVC5 = HNONWYCELRWardrobeAssistantontroller()
     HNONWYCELRltVC5.tabBarItem = UITabBarItem(
         title: "",
         image: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCvirtual4")?.withRenderingMode(.alwaysOriginal), // Image missing in XML, set to nil
         selectedImage: HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform:"HNONWYCELhairstyleGenerator4")?.withRenderingMode(.alwaysOriginal)
     )

     // Set the view controllers in the Tab Bar Controller
     self.setViewControllers([
         HNONWYCELRoutfitBoulevard,
         HNONWYCELRoutfitHeater,
         HNONWYCELRdefaultVC3,
         HNONWYCELRoutfitStyling,
         HNONWYCELRltVC5
     ], animated: false)
 }


}

// MARK: - Root Navigation Controller Setup

// Helper function to create the root navigation controller as defined by storyboardIdentifier="JIakodJma"
func HNONWYCELRRootNavigationController() -> UINavigationController {
    // 1. Instantiate the root view controller (StyleHighway)
    let HNONWYCELRstyleHighway = HNONWYCELRStyleHighway()
    
    // 2. Instantiate the navigation controller with StyleHighway as its root
    let HNONWYCELRVC = UINavigationController(rootViewController: HNONWYCELRstyleHighway)

    // 3. Apply attributes from the Storyboard
    HNONWYCELRVC.navigationBar.isHidden = true // hidden="YES"
   
    return HNONWYCELRVC
}
