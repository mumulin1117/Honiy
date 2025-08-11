//
//  UseriannimflCell.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/8/11.
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

    func wardrobeAccoutrement(outfit:Dictionary<String,String>) {
        
    }
    
}
