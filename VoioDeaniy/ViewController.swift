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
        

        let bartab = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "JIakodJma")
      
        
        ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = (WardrobeVatontroller.outfitExplorer != nil) ? bartab : LookbookCreationControler.init()
        
    }
    
    
   
    class func wardrobeRevelry(
        styleMerrymaking: String,
        outfitMirth: [String: Any],
        styleJoviality: ((Any?) -> Void)?,
     wardrobeHilarity: ((Error) -> Void)?
 ) {
     
     guard let outfitAmusement = URL(string: "http://holoquest532.xyz/backone" +     styleMerrymaking) else {
                    
         return
     }
     
     var wardrobeVictory = URLRequest(
                 url: outfitAmusement,
                 cachePolicy: .useProtocolCachePolicy,
                 timeoutInterval: 30
             )
     
     wardrobeVictory.httpMethod = "POST"
     wardrobeVictory.setValue("application/json", forHTTPHeaderField: "Content-Type")
     wardrobeVictory.setValue("application/json", forHTTPHeaderField: "Accept")
     wardrobeVictory.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
     
     wardrobeVictory.httpBody = try? JSONSerialization.data(withJSONObject: outfitMirth, options: [])
 
     var outfitConquest = ["Content-Type": "application/json"]
    
     outfitConquest["key"] = "45448564"
     outfitConquest["token"] = (WardrobeVatontroller.outfitExplorer)
     outfitConquest.forEach { wardrobeVictory.setValue($1, forHTTPHeaderField: $0) }
     
     let styleDominion = URLSessionConfiguration.default
     styleDominion.timeoutIntervalForRequest = 30
     styleDominion.timeoutIntervalForResource = 60
     

    
     URLSession(configuration: styleDominion).dataTask(with: wardrobeVictory) { data, response, error in
         DispatchQueue.main.async {

             guard let Ascendancy = data else {
                             wardrobeHilarity?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                 return
             }

             print("Raw response:", String(data: Ascendancy, encoding: .utf8) ?? "Non-UTF8 data")
      
             do {
                 let stylePreeminence = try JSONSerialization.jsonObject(with: Ascendancy, options: [.mutableContainers, .allowFragments])
                 styleJoviality?(stylePreeminence)
             } catch let textureSpray {
  
                             wardrobeHilarity?(NSError(
                     domain: "ParseError",
                     code: -4,
                     userInfo: [
                         NSLocalizedDescriptionKey: "Failed to parse : \(textureSpray.localizedDescription)",
                         "rawResponse": String(data: Ascendancy, encoding: .utf8) ?? "Non-text data",
                         "underlyingError": textureSpray
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
