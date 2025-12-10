//
//  HNONWYCELRMainController.swift
//  VoioDeaniy
//
//  Created by  on 2025/12/10.
//

import UIKit

class StyleHighway:  UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
           super.viewDidLoad()
        setupStyleHighway()
           self.delegate = self
       }

}


extension StyleHighway {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        // 检查是否点击的是中间的 Item（假设是第2个，索引从0开始）
        if viewController == tabBarController.viewControllers?[2] {
            presentCustomViewController()
            return false // 阻止默认的切换行为
        }
        return true
    }
    
    private func presentCustomViewController() {
        let customVC = WardrobeVatontroller.init(styleMotor: AtfitFryer.styleMotor.wardrobeSpout(Nozzle: "")) // 你要 present 的控制器
        customVC.outfitShroud = true
        customVC.modalPresentationStyle = .fullScreen // 或 .pageSheet 等
        present(customVC, animated: true, completion: nil)
    }
 func setupStyleHighway() {
     // Set Tab Bar appearance
     let appearance = UITabBarAppearance()
     appearance.configureWithOpaqueBackground()
     appearance.backgroundColor = .white // <color key="backgroundColor" white="1"
     tabBar.standardAppearance = appearance
     if #available(iOS 15.0, *) {
         tabBar.scrollEdgeAppearance = appearance
     }

     // 1. Outfit Boulevardntroler (virtual0 / hairstyleGenerator0)
     let outfitBoulevard = OutfitBoulevardntroler()
     outfitBoulevard.tabBarItem = UITabBarItem(
         title: "",
         image: UIImage(named: "virtual0"),
         selectedImage: UIImage(named: "hairstyleGenerator0")
     )

     // 2. Outfit Heater Controller (virtual1 / hairstyleGenerator1)
     let outfitHeater = OutfitHeaterController()
     outfitHeater.tabBarItem = UITabBarItem(
         title: "",
         image: UIImage(named: "virtual1"),
         selectedImage: UIImage(named: "hairstyleGenerator1")
     )

     // 3. DefaultViewController3 (makeupSimulation2 / makeupSimulation2)
     let defaultVC3 = UIViewController()
     defaultVC3.tabBarItem = UITabBarItem(
         title: "",
         image: UIImage(named: "virtual2"),
         selectedImage: UIImage(named: "hairstyleGenerator3")
     )

     // 4. outfitStylingController (VNS-kv-egy - Missing item in XML, using a default)
     let outfitStyling = outfitStylingController()
     outfitStyling.tabBarItem = UITabBarItem(
         title: "",
         image: UIImage(named: "virtual3"), // Image missing in XML, set to nil
         selectedImage: UIImage(named: "hairstyleGenerator3")
     )

     // 5. DefaultViewController5 (ACq-Oi-3Wd - Missing scene/item in XML, using a default)
     let defaultVC5 = WardrobeAssistantontroller()
     defaultVC5.tabBarItem = UITabBarItem(
         title: "",
         image: UIImage(named: "virtual4"), // Image missing in XML, set to nil
         selectedImage: UIImage(named: "hairstyleGenerator4")
     )

     // Set the view controllers in the Tab Bar Controller
     self.setViewControllers([
         outfitBoulevard,
         outfitHeater,
         defaultVC3,
         outfitStyling,
         defaultVC5
     ], animated: false)
 }


}

// MARK: - Root Navigation Controller Setup

// Helper function to create the root navigation controller as defined by storyboardIdentifier="JIakodJma"
func createRootNavigationController() -> UINavigationController {
    // 1. Instantiate the root view controller (StyleHighway)
    let styleHighway = StyleHighway()
    
    // 2. Instantiate the navigation controller with StyleHighway as its root
    let navigationController = UINavigationController(rootViewController: styleHighway)

    // 3. Apply attributes from the Storyboard
    navigationController.navigationBar.isHidden = true // hidden="YES"
   
    return navigationController
}
