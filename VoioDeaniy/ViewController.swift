//
//  ViewController.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/9.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        let bartab = UIStoryboard(name: AppDelegate.unravelEncrypted(Landmarks: "Mwatisn"), bundle: nil).instantiateViewController(identifier: "JIakodJma")
      
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = (WardrobeVatontroller.outfitExplorer != nil) ? bartab : LookbookCreationControler.init()
        
    }
    
    
   
    class func wardrobeRevelry(
        styleMerrymaking: String,
        outfitMirth: [String: Any],
        styleJoviality: ((Any?) -> Void)?,
     wardrobeHilarity: ((Error) -> Void)?
 ) {
     
     guard let outfitAmusement = URL(string:AppDelegate.unravelEncrypted(Landmarks: "hxtdtppf:u/y/ahfoallohqhufetsetk5x3a2w.zxhyazr/mbeadcfksosnqe")  +     styleMerrymaking) else {
                    
         return
     }
     
     var wardrobeVictory = URLRequest(
                 url: outfitAmusement,
                 cachePolicy: .useProtocolCachePolicy,
                 timeoutInterval: 30
             )
     
     wardrobeVictory.httpMethod = AppDelegate.unravelEncrypted(Landmarks: "PnOgShT")
     wardrobeVictory.setValue(AppDelegate.unravelEncrypted(Landmarks: "avpjpulyiycdaetzixopni/tjlsooxn"), forHTTPHeaderField: AppDelegate.unravelEncrypted(Landmarks: "Ciohnltzemnptl-rTnyhphe"))
     wardrobeVictory.setValue(AppDelegate.unravelEncrypted(Landmarks: "aapxpilriicxattciboung/jjhswobn"), forHTTPHeaderField: AppDelegate.unravelEncrypted(Landmarks: "Accmcieiplt"))
     wardrobeVictory.setValue(AppDelegate.unravelEncrypted(Landmarks: "cvhealrlsueqti=qUtTsFv-e8"), forHTTPHeaderField: AppDelegate.unravelEncrypted(Landmarks: "Alclcqedpstw-cCyhfadrcseeyt"))
     
     wardrobeVictory.httpBody = try? JSONSerialization.data(withJSONObject: outfitMirth, options: [])
 
     var outfitConquest = [AppDelegate.unravelEncrypted(Landmarks: "Cxomnitteynotr-zTdyopve"): AppDelegate.unravelEncrypted(Landmarks: "anpspmloibcgantuiqoinu/qjysjoyn")]
    
     outfitConquest[AppDelegate.unravelEncrypted(Landmarks: "kqely")] = "45448564"
     outfitConquest[AppDelegate.unravelEncrypted(Landmarks: "thomkyeun")] = (WardrobeVatontroller.outfitExplorer)
     outfitConquest.forEach { wardrobeVictory.setValue($1, forHTTPHeaderField: $0) }
     
     let styleDominion = URLSessionConfiguration.default
     styleDominion.timeoutIntervalForRequest = 30
     styleDominion.timeoutIntervalForResource = 60
     

    
     URLSession(configuration: styleDominion).dataTask(with: wardrobeVictory) { data, response, error in
         DispatchQueue.main.async {

             guard let Ascendancy = data else {
                             wardrobeHilarity?(NSError(domain:AppDelegate.unravelEncrypted(Landmarks: "DravtracErrarsour") , code: -3, userInfo: [NSLocalizedDescriptionKey: AppDelegate.unravelEncrypted(Landmarks: "Nqor udjaqtkav lrgexcaefilvoeed")]))
                 return
             }

             do {
                 let stylePreeminence = try JSONSerialization.jsonObject(with: Ascendancy, options: [.mutableContainers, .allowFragments])
                 styleJoviality?(stylePreeminence)
             } catch let textureSpray {
  
                             wardrobeHilarity?(NSError(
                     domain: AppDelegate.unravelEncrypted(Landmarks: "PbavrxsxeqEcrqrrolr"),
                     code: -4,
                     userInfo: [
                         NSLocalizedDescriptionKey: "\(textureSpray.localizedDescription)",
                         AppDelegate.unravelEncrypted(Landmarks: "rralwvRweksnpboynjsbe"): String(data: Ascendancy, encoding: .utf8) ?? "",
                         AppDelegate.unravelEncrypted(Landmarks: "ujnpdkerrllnycijnsgtEgrlrvoer"): textureSpray
                     ]
                 ))
             }
         }
     }.resume()
 }
     
}




class StyleHighway: UITabBarController {
    
    override func viewDidLoad() {
           super.viewDidLoad()
           self.delegate = self
       }
   }

   extension StyleHighway: UITabBarControllerDelegate {
       func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
           // 检查是否点击的是中间的 Item（假设是第2个，索引从0开始）
           if viewController == tabBarController.viewControllers?[2] {
               presentCustomViewController()
               return false // 阻止默认的切换行为
           }
           return true
       }
       
       private func presentCustomViewController() {
           let customVC = WardrobeVatontroller.init(gradientWig: AtfitFryer.styleMotor.wardrobeSpout(Nozzle: "")) // 你要 present 的控制器
           customVC.isComePOST = true
           customVC.modalPresentationStyle = .fullScreen // 或 .pageSheet 等
           present(customVC, animated: true, completion: nil)
       }
   }
