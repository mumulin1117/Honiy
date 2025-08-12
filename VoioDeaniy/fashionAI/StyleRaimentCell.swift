//
//  StyleRaiment Cell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class StyleRaimentCell: UICollectionViewCell {
    
    @IBOutlet weak var wardrobeAdornment: UILabel!
    
    @IBOutlet weak var styleTrappings: UILabel!
    
    @IBOutlet weak var outfitDecoration: UIButton!
    
    @IBOutlet weak var styleEmbellishment: UIButton!
    
    func wardrobeAccoutrement(outfit:Dictionary<String,Any>) {
        limited.outfitTherapist(from: outfit["styleAssessment"] as? String ?? "")
        wardrobeAdornment.text = outfit["outfitRemix"] as? String
      let prise =  outfit["fashionTips"] as? Int ?? 0
        styleTrappings.text = "\(prise) praise"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        wardrobeOrnament()
    }

    @IBOutlet weak var limited: UIImageView!
    
    private func wardrobeOrnament()  {
        styleTrappings.layer.cornerRadius = 12
        styleTrappings.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
    }
}
