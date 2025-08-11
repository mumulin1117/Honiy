//
//  StyleRaiment Cell.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/8/11.
//

import UIKit

class StyleRaimentCell: UICollectionViewCell {
    
    @IBOutlet weak var wardrobeAdornment: UILabel!
    
    @IBOutlet weak var styleTrappings: UILabel!
    
    @IBOutlet weak var outfitDecoration: UIButton!
    
    @IBOutlet weak var styleEmbellishment: UIButton!
    
    func wardrobeAccoutrement(outfit:Dictionary<String,String>) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        wardrobeOrnament()
    }

    
    private func wardrobeOrnament()  {
        styleTrappings.layer.cornerRadius = 12
        styleTrappings.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
    }
}
