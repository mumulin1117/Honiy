//
//  HNONWYCELRoutfitStylingCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit
class HNONWYCELRoutfitStylingCell: UICollectionViewCell {

    // MARK: - UI Components
    
    // HNONWYCELRwardrobeReservoir (VVp-6A-dqg)
    let HNONWYCELRwardrobeReservoir: UIImageView = {
        let HNONWYCELRtonalshift = UIImageView()
        HNONWYCELRtonalshift.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRtonalshift.clipsToBounds = true
        HNONWYCELRtonalshift.contentMode = .scaleAspectFit
        return HNONWYCELRtonalshift
    }()
    
    // HNONWYCEoutfitAquifer (cas-1U-jKX)
    let HNONWYCEoutfitAquifer: UILabel = {
        let HNONWYCELRlbl = UILabel()
        HNONWYCELRlbl.translatesAutoresizingMaskIntoConstraints = false
  
        HNONWYCELRlbl.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        HNONWYCELRlbl.textColor = .black
    
        return HNONWYCELRlbl
    }()
    
    // styleWell (TvS-HU-JDr)
    let HNONWYCELRstyleWell: UILabel = {
        let HNONWYCELRbel = UILabel()
        HNONWYCELRbel.translatesAutoresizingMaskIntoConstraints = false
       
        HNONWYCELRbel.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        // White: 0.0, Alpha: 0.50881696428571432
        HNONWYCELRbel.textColor = UIColor.black.withAlphaComponent(0.5088)
       
        return HNONWYCELRbel
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        HNONWYCELRcolorfold()
        HNONWYCELRstyleCistern()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HNONWYCELRcolorfold()
        HNONWYCELRstyleCistern()
    }
    
    // MARK: - Setup and Styling
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HNONWYCELRstyleCistern()
    }
    
    private func HNONWYCELRstyleCistern() {
        // Cell background color: red="0.96..."
        self.backgroundColor = UIColor(red: 0.96078431372549022, green: 0.96078431372549022, blue: 0.96078431372549022, alpha: 1)
        
        // Custom styling from awakeFromNib
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        
        HNONWYCELRwardrobeReservoir.layer.cornerRadius = 25
        HNONWYCELRwardrobeReservoir.layer.masksToBounds = true
    }
    
    private func HNONWYCELRcolorfold() {
        contentView.addSubview(HNONWYCELRwardrobeReservoir)
        contentView.addSubview(HNONWYCEoutfitAquifer)
        contentView.addSubview(HNONWYCELRstyleWell)
        
        NSLayoutConstraint.activate([
            // wardrobeReservoir Constraints (VVp-6A-dqg)
            HNONWYCELRwardrobeReservoir.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            HNONWYCELRwardrobeReservoir.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            HNONWYCELRwardrobeReservoir.widthAnchor.constraint(equalToConstant: 50),
            HNONWYCELRwardrobeReservoir.heightAnchor.constraint(equalToConstant: 50),
            
            // outfitAquifer Constraints (cas-1U-jKX)
            HNONWYCEoutfitAquifer.topAnchor.constraint(equalTo: HNONWYCELRwardrobeReservoir.topAnchor),
            HNONWYCEoutfitAquifer.leadingAnchor.constraint(equalTo: HNONWYCELRwardrobeReservoir.trailingAnchor, constant: 9),
            HNONWYCEoutfitAquifer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
            // styleWell Constraints (TvS-HU-JDr)
            HNONWYCELRstyleWell.leadingAnchor.constraint(equalTo: HNONWYCELRwardrobeReservoir.trailingAnchor, constant: 9),
            HNONWYCELRstyleWell.topAnchor.constraint(equalTo: HNONWYCEoutfitAquifer.bottomAnchor, constant: 7),
            HNONWYCELRstyleWell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -9)
        ])
    }
    
    // MARK: - Data Configuration
    
    func HNONWYCELRwardrobeAccoutrement(HNONWYCELRoutfit:Dictionary<String,Any>) {
        HNONWYCEoutfitAquifer.text =  HNONWYCELRoutfit["styleConsultant"]    as? String
        
        HNONWYCELRstyleWell.text =  HNONWYCELRoutfit["wardrobeRevamp"]    as? String
        
        // Note: The XIB's outlet for wardrobeReservoir is linked to VVp-6A-dqg.
        // The original code uses "styleConsultant" for the URL, which is the same key used for outfitAquifer.
        HNONWYCELRwardrobeReservoir.HNONWYCELRoutfitTherapist(HNONWYCELRfrom: HNONWYCELRoutfit["styleConsultant"] as? String ?? "")
    }
}
