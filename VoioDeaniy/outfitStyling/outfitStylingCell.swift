//
//  outfitStylingCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit
class outfitStylingCell: UICollectionViewCell {

    // MARK: - UI Components
    
    // wardrobeReservoir (VVp-6A-dqg)
    let wardrobeReservoir: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // outfitAquifer (cas-1U-jKX)
    let outfitAquifer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
  
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
    
        return label
    }()
    
    // styleWell (TvS-HU-JDr)
    let styleWell: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
       
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        // White: 0.0, Alpha: 0.50881696428571432
        label.textColor = UIColor.black.withAlphaComponent(0.5088)
       
        return label
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        styleCistern()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        styleCistern()
    }
    
    // MARK: - Setup and Styling
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleCistern()
    }
    
    private func styleCistern() {
        // Cell background color: red="0.96..."
        self.backgroundColor = UIColor(red: 0.96078431372549022, green: 0.96078431372549022, blue: 0.96078431372549022, alpha: 1)
        
        // Custom styling from awakeFromNib
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        
        wardrobeReservoir.layer.cornerRadius = 25
        wardrobeReservoir.layer.masksToBounds = true
    }
    
    private func setupViews() {
        contentView.addSubview(wardrobeReservoir)
        contentView.addSubview(outfitAquifer)
        contentView.addSubview(styleWell)
        
        NSLayoutConstraint.activate([
            // wardrobeReservoir Constraints (VVp-6A-dqg)
            wardrobeReservoir.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            wardrobeReservoir.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            wardrobeReservoir.widthAnchor.constraint(equalToConstant: 50),
            wardrobeReservoir.heightAnchor.constraint(equalToConstant: 50),
            
            // outfitAquifer Constraints (cas-1U-jKX)
            outfitAquifer.topAnchor.constraint(equalTo: wardrobeReservoir.topAnchor),
            outfitAquifer.leadingAnchor.constraint(equalTo: wardrobeReservoir.trailingAnchor, constant: 9),
            outfitAquifer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
            // styleWell Constraints (TvS-HU-JDr)
            styleWell.leadingAnchor.constraint(equalTo: wardrobeReservoir.trailingAnchor, constant: 9),
            styleWell.topAnchor.constraint(equalTo: outfitAquifer.bottomAnchor, constant: 7),
            styleWell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -9)
        ])
    }
    
    // MARK: - Data Configuration
    
    func wardrobeAccoutrement(outfit:Dictionary<String,Any>) {
        outfitAquifer.text =  outfit["styleConsultant"]    as? String
        
        styleWell.text =  outfit["wardrobeRevamp"]    as? String
        
        // Note: The XIB's outlet for wardrobeReservoir is linked to VVp-6A-dqg.
        // The original code uses "styleConsultant" for the URL, which is the same key used for outfitAquifer.
        wardrobeReservoir.outfitTherapist(from: outfit["styleConsultant"] as? String ?? "")
    }
}
