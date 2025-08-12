//
//  UseriannimflCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class UseriannimflCell: UICollectionViewCell {
    
    @IBOutlet weak var styleGear: UIImageView!
    
    @IBOutlet weak var wardrobeParaphernalia: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleGear.layer.cornerRadius = 30
        styleGear.layer.masksToBounds = true
        
    }

    func wardrobeAccoutrement(outfit:Dictionary<String,Any>) {
        styleGear.outfitTherapist(from: outfit["wardrobeAssistant"] as? String ?? "")
        wardrobeParaphernalia.text = outfit["fashionAI"] as? String
    }
    
}


extension UIImageView {
    func outfitTherapist(from Enhancer: String) {
       
        guard let wardrobe = URL(string: Enhancer) else {
        
            return
        }
      
        URLSession.shared.dataTask(with: wardrobe) { [weak self] data, _, error in
            guard let self = self else { return }
            
            if let styleMapping = error {
              
                return
            }
            
            guard let styleSherpacx = data, let image = UIImage(data: styleSherpacx) else {
                
                return
            }
            
       
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
    }
}
