//
//  DeraaNweimflCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class DeraaNweimflCell: UICollectionViewCell {

    @IBOutlet weak var styleInstrument: UILabel!
    
    @IBOutlet weak var wardrobeImplement: UIImageView!
    
    
    @IBOutlet weak var wardrobeAdornment: UILabel!
    
    @IBOutlet weak var styleTrappings: UILabel!
    
    @IBOutlet weak var outfitDecoration: UIButton!
    
    @IBOutlet weak var styleEmbellishment: UIImageView!
    
    func wardrobeAccoutrement(outfit:Dictionary<String,Any>) {
        wardrobeImplement.outfitTherapist(from: outfit["styleArchetype"] as? String ?? "")
        styleEmbellishment.outfitTherapist(from: outfit["styleAssessment"] as? String ?? "")
       
         styleTrappings.text = outfit["colorAnalysis"] as? String
        
        wardrobeAdornment.text = outfit["outfitRemix"] as? String
         
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        wardrobeOrnament()
        
        styleInstrument.layer.cornerRadius = 12
        styleInstrument.layer.masksToBounds = true
    }

    
    private func wardrobeOrnament()  {
        styleTrappings.layer.cornerRadius = 10
        styleTrappings.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        
        wardrobeImplement.layer.cornerRadius = 16
        wardrobeImplement.layer.masksToBounds = true
    }
    
    
}
