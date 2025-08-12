//
//  WardrobeAssistantontroller.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class WardrobeAssistantontroller: UIViewController {

    @IBOutlet weak var outfitValidation: UIImageView!
    
    @IBOutlet weak var outfitDiscovery: UILabel!
    
    
    @IBOutlet weak var Triw: UIButton!
    @IBOutlet weak var Triwz: UIButton!
    @IBOutlet weak var Triwx: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outfitDiscovery.text = UserDefaults.standard.object(forKey: "outfitArchitect") as? String
        
        outfitValidation.layer.cornerRadius = 15
        outfitValidation.layer.masksToBounds = true
        
        
        Triw.layer.cornerRadius = 15
        Triw.layer.masksToBounds = true
        
        Triwz.layer.cornerRadius = 15
        Triwz.layer.masksToBounds = true
        
        Triwx.layer.cornerRadius = 15
        Triwx.layer.masksToBounds = true
    }
    

    @IBAction func wardrobePipe(_ sender: UIButton) {
        var feivt =  AtfitFryer.outfitEngine.wardrobeSpout(Nozzle: "")
        
        switch sender.tag  {
        case 70:
            feivt = AtfitFryer.outfitPropeller.wardrobeSpout(Nozzle: "")
        case 80:
            feivt = AtfitFryer.styleRotor.wardrobeSpout(Nozzle: "")
        case 90:
            feivt = AtfitFryer.wardrobeImpeller.wardrobeSpout(Nozzle: "")
        case 100:
            feivt = AtfitFryer.outfitPump.wardrobeSpout(Nozzle: "")
        case 110:
            feivt = AtfitFryer.wardrobeCooler.wardrobeSpout(Nozzle: "")
        default:
            break
            
            
        }
        
        let wardrobeHeroism =  WardrobeVatontroller.init(gradientWig:feivt)
        wardrobeHeroism.isComePOST = false
        self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }

       
}
