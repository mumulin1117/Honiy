//
//  outfitStylingCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class outfitStylingCell: UICollectionViewCell {

    @IBOutlet weak var wardrobeReservoir: UIImageView!
    
    @IBOutlet weak var styleWell: UILabel!
    
    @IBOutlet weak var outfitAquifer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleCistern()
    }
    
    private func styleCistern()  {
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        
        
        wardrobeReservoir.layer.cornerRadius = 25
        wardrobeReservoir.layer.masksToBounds = true
    }
    func wardrobeAccoutrement(outfit:Dictionary<String,Any>) {
        outfitAquifer.text =  outfit["styleConsultant"]    as? String
        
        styleWell.text =  outfit["wardrobeRevamp"]    as? String
        
        wardrobeReservoir.outfitTherapist(from: outfit["styleConsultant"] as? String ?? "")
    }
    
    
}
