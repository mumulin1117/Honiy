//
//  OutfitHeaterCell.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/8/11.
//

import UIKit

class OutfitHeaterCell: UICollectionViewCell {

    @IBOutlet weak var outfitFurnace: UIButton!
    
    @IBOutlet weak var styleKiln: UIImageView!
    
    @IBOutlet weak var wardrobeOven: UIImageView!
    
    @IBOutlet weak var outfitStove: UIView!
    
    @IBOutlet weak var styleCooker: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        outfitStove.layer.cornerRadius = 32
        outfitStove.layer.masksToBounds = true
        
        
        styleKiln.layer.cornerRadius = 20
        styleKiln.layer.masksToBounds = true
        
        
        styleCooker.layer.cornerRadius = 20
        styleCooker.layer.masksToBounds = true
        
    }
    
    func wardrobeAccoutrement(outfit:Dictionary<String,String>) {
        
    }

}
