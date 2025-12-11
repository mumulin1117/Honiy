//
//  HNONWYCEOutfitHeaterCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class HNONWYCEOutfitHeaterCell: UICollectionViewCell {

    // MARK: - UI Components (Outlets and other views from XIB)
    
    // HNONWYCsstyleKiln (vzA-8l-W7T)
    let HNONWYCEstyleKiln: UIImageView = {
        let HNONWYCELRvisualweave = UIImageView()
        HNONWYCELRvisualweave.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRvisualweave.clipsToBounds = true
        HNONWYCELRvisualweave.contentMode = .scaleAspectFill
        return HNONWYCELRvisualweave
    }()
    
    // outfitStove (XKR-Cn-Z34)
    let HNONWYCEoutfitStove: UIView = {
        let HNONWYCELRdesignshadingd = UIView()
        HNONWYCELRdesignshadingd.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRdesignshadingd.backgroundColor = .systemBackground // systemColor in XIB
        return HNONWYCELRdesignshadingd
    }()
    
    // HNONWYCstyleCooker (3c0-MF-4m5)
    let HNONWYCEstyleCooker: UIImageView = {
        let HNONWYCELRtonalcalibration = UIImageView()
        HNONWYCELRtonalcalibration.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRtonalcalibration.clipsToBounds = true
        HNONWYCELRtonalcalibration.contentMode = .scaleAspectFit
        return HNONWYCELRtonalcalibration
    }()
    
    // laonheng (bFp-Z2-qNg)
    let HNONWYCElaonheng: UILabel = {
        let HNONWYCELRchromeflourishd = UILabel()
        HNONWYCELRchromeflourishd.translatesAutoresizingMaskIntoConstraints = false
       
        HNONWYCELRchromeflourishd.font = UIFont.systemFont(ofSize: 15)
        HNONWYCELRchromeflourishd.textColor = .black
      
        return HNONWYCELRchromeflourishd
    }()
    
    // laongoide (dH4-np-6Vf)
    let HNONWYCElaongoide: UILabel = {
        let HNONWYCELRholidaypaletted = UILabel()
        HNONWYCELRholidaypaletted.translatesAutoresizingMaskIntoConstraints = false
       
        HNONWYCELRholidaypaletted.font = UIFont.systemFont(ofSize: 15)
        HNONWYCELRholidaypaletted.textColor = UIColor.black.withAlphaComponent(0.5)
      
        return HNONWYCELRholidaypaletted
    }()

    // HNONWYCwardrobeOven (H2V-0F-uR4)
    let HNONWYCEwardrobeOven: UIImageView = {
        let HNONWYCELRcelebrationwearf = UIImageView()
        HNONWYCELRcelebrationwearf.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRcelebrationwearf.clipsToBounds = true
        HNONWYCELRcelebrationwearf.contentMode = .scaleAspectFit
        HNONWYCELRcelebrationwearf.image = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCoutfitAs") // Assumes image asset exists
        return HNONWYCELRcelebrationwearf
    }()
    
    // Unconnected image view (b6a-Ov-fhb)
    let wardrobeCoolerImageView: UIImageView = {
        let HNONWYCELRfestiveconceptg = UIImageView()
        HNONWYCELRfestiveconceptg.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRfestiveconceptg.clipsToBounds = true
        HNONWYCELRfestiveconceptg.contentMode = .scaleAspectFit
        HNONWYCELRfestiveconceptg.image = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCwardrobeCooler") // Assumes image asset exists
        return HNONWYCELRfestiveconceptg
    }()
    
    // HNONWYCEoutfitFurnace (PqH-zn-uTJ)
    let HNONWYCEoutfitFurnace: UIButton = {
        let HNONWYCELRseasonalglowd = UIButton(type: .custom)
        HNONWYCELRseasonalglowd.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRseasonalglowd.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCsstyleInstrument"), for: .normal) // Assumes image asset exists
        return HNONWYCELRseasonalglowd
    }()
    
    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        HNONWYCELRtexturedetail()
        HNONWYCEapplyStyling()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HNONWYCELRtexturedetail()
        HNONWYCEapplyStyling()
    }
    
    // MARK: - Styling and Setup

    override func awakeFromNib() {
        super.awakeFromNib()
        HNONWYCEapplyStyling()
    }
    
    private func HNONWYCEapplyStyling() {
        HNONWYCEoutfitStove.layer.cornerRadius = 32
        HNONWYCEoutfitStove.layer.masksToBounds = true
        
        HNONWYCEstyleKiln.layer.cornerRadius = 20
        HNONWYCEstyleKiln.layer.masksToBounds = true
        
        HNONWYCEstyleCooker.layer.cornerRadius = 20
        HNONWYCEstyleCooker.layer.masksToBounds = true
    }
    
    private func HNONWYCELRtexturedetail() {
        // Add main components to contentView
        contentView.addSubview(HNONWYCEstyleKiln)
        contentView.addSubview(HNONWYCEoutfitStove)
        contentView.addSubview(wardrobeCoolerImageView)
        contentView.addSubview(HNONWYCEwardrobeOven)
        contentView.addSubview(HNONWYCEoutfitFurnace)
        
        // Add subviews to outfitStove
        HNONWYCEoutfitStove.addSubview(HNONWYCEstyleCooker)
        HNONWYCEoutfitStove.addSubview(HNONWYCElaonheng)
        HNONWYCEoutfitStove.addSubview(HNONWYCElaongoide)
        
        // Setup Constraints
        NSLayoutConstraint.activate([
            // HNONWYCsstyleKiln (vzA-8l-W7T) - Main image
            HNONWYCEstyleKiln.topAnchor.constraint(equalTo: contentView.topAnchor),
            HNONWYCEstyleKiln.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HNONWYCEstyleKiln.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HNONWYCEstyleKiln.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -33), // bottom 33 away from cell bottom

            // outfitStove (XKR-Cn-Z34) - Bottom container view
            HNONWYCEoutfitStove.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            HNONWYCEoutfitStove.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            HNONWYCEoutfitStove.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            HNONWYCEoutfitStove.heightAnchor.constraint(equalToConstant: 64),
            
            // wardrobeCoolerImageView (b6a-Ov-fhb) - Right-side icon, bottom
            wardrobeCoolerImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            wardrobeCoolerImageView.widthAnchor.constraint(equalToConstant: 44),
            wardrobeCoolerImageView.heightAnchor.constraint(equalToConstant: 44),
            wardrobeCoolerImageView.bottomAnchor.constraint(equalTo: HNONWYCEoutfitStove.topAnchor, constant: -20), // 20pt spacing to outfitStove
            
            // HNONWYCwardrobeOven (H2V-0F-uR4) - Right-side icon, middle
            HNONWYCEwardrobeOven.centerXAnchor.constraint(equalTo: wardrobeCoolerImageView.centerXAnchor),
            HNONWYCEwardrobeOven.bottomAnchor.constraint(equalTo: wardrobeCoolerImageView.topAnchor, constant: -20),
            HNONWYCEwardrobeOven.widthAnchor.constraint(equalToConstant: 44),
            HNONWYCEwardrobeOven.heightAnchor.constraint(equalToConstant: 44),
            
            // outfitFurnace (PqH-zn-uTJ) - Top-left button
            HNONWYCEoutfitFurnace.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            HNONWYCEoutfitFurnace.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            HNONWYCEoutfitFurnace.widthAnchor.constraint(equalToConstant: 36),
            HNONWYCEoutfitFurnace.heightAnchor.constraint(equalToConstant: 36),

            // HNONWYCstyleCooker (3c0-MF-4m5) - Avatar inside outfitStove
            HNONWYCEstyleCooker.leadingAnchor.constraint(equalTo: HNONWYCEoutfitStove.leadingAnchor, constant: 12),
            HNONWYCEstyleCooker.centerYAnchor.constraint(equalTo: HNONWYCEoutfitStove.centerYAnchor),
            HNONWYCEstyleCooker.widthAnchor.constraint(equalToConstant: 40),
            HNONWYCEstyleCooker.heightAnchor.constraint(equalToConstant: 40),
            
            // laonheng (bFp-Z2-qNg) - Top label inside outfitStove
            HNONWYCElaonheng.leadingAnchor.constraint(equalTo: HNONWYCEstyleCooker.trailingAnchor, constant: 6),
            HNONWYCElaonheng.topAnchor.constraint(equalTo: HNONWYCEstyleCooker.topAnchor),
            HNONWYCElaonheng.trailingAnchor.constraint(equalTo: HNONWYCEoutfitStove.trailingAnchor, constant: -13),
            
            // laongoide (dH4-np-6Vf) - Bottom label inside outfitStove
            HNONWYCElaongoide.leadingAnchor.constraint(equalTo: HNONWYCElaonheng.leadingAnchor),
            HNONWYCElaongoide.topAnchor.constraint(equalTo: HNONWYCElaonheng.bottomAnchor, constant: 1),
            HNONWYCElaongoide.trailingAnchor.constraint(equalTo: HNONWYCEoutfitStove.trailingAnchor, constant: -19)
        ])
    }

    // MARK: - Data Configuration (from HNONWYCEOutfitHeaterCell.swift)
    
    func HNONWYCELRwardrobeAccoutrement(HNONWYCELRoutfit: Dictionary<String, Any>) {
        HNONWYCEstyleKiln.HNONWYCELRoutfitTherapist(HNONWYCELRfrom: (HNONWYCELRoutfit["outfitGenerator"] as? Array<String>)?.first ?? "")
        HNONWYCEstyleCooker.HNONWYCELRoutfitTherapist(HNONWYCELRfrom: HNONWYCELRoutfit["styleArchetype"] as? String ?? "")
       
        HNONWYCElaonheng.text = HNONWYCELRoutfit["colorAnalysis"] as? String
        
        HNONWYCElaongoide.text = HNONWYCELRoutfit["outfitRemix"] as? String
    }
}
