//
//  OutfitHeaterCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class OutfitHeaterCell: UICollectionViewCell {

    @IBOutlet weak var outfitFurnace: UIButton!
    
    @IBOutlet weak var styleKiln: UIImageView!
    
    @IBOutlet weak var wardrobeOven: UIImageView!
    
    @IBOutlet weak var outfitStove: UIView!
    
    @IBOutlet weak var styleCooker: UIImageView!
    
    @IBOutlet weak var laonheng: UILabel!
    
    @IBOutlet weak var laongoide: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        outfitStove.layer.cornerRadius = 32
        outfitStove.layer.masksToBounds = true
        
        
        styleKiln.layer.cornerRadius = 20
        styleKiln.layer.masksToBounds = true
        
        
        styleCooker.layer.cornerRadius = 20
        styleCooker.layer.masksToBounds = true
        
    }
    
    func wardrobeAccoutrement(outfit:Dictionary<String,Any>) {
        styleKiln.outfitTherapist(from: (outfit["outfitGenerator"] as? Array<String>)?.first ?? "")
        styleCooker.outfitTherapist(from: outfit["styleArchetype"] as? String ?? "")
       
        laonheng.text = outfit["colorAnalysis"] as? String
        
        laongoide.text = outfit["outfitRemix"] as? String
    }

}
