//
//  StyleRaiment Cell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class HNONWYCELRStyleRaimentCell: UICollectionViewCell {
    
    // MARK: - UI Components
    
    // limited (pgE-FW-dSr)
    let HNONWYCELRlimited: UIImageView = {
        let HNONWYCELRlimted = UIImageView()
        HNONWYCELRlimted.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRlimted.clipsToBounds = true
        HNONWYCELRlimted.contentMode = .scaleAspectFill
        return HNONWYCELRlimted
    }()
    
    // RWo-EA-J9N
    let HNONWYCELRfiberflow: UIView = {
        let HNONWYCELRview = UIView()
        HNONWYCELRview.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRview.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.305)
        return HNONWYCELRview
    }()
    
    // wardrobeAdornment (cxi-S7-qeE)
    let HNONWYCELRwardrobeAdornment: UILabel = {
        let HNONWYCELRlbl = UILabel()
        HNONWYCELRlbl.translatesAutoresizingMaskIntoConstraints = false
       
        HNONWYCELRlbl.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        HNONWYCELRlbl.textColor = .white
       
        return HNONWYCELRlbl
    }()
    
    // styleTrappings (gN5-4b-DIF)
    let HNONWYCELRstyleTrappings: UILabel = {
        let HNONWYCELRlbl = UILabel()
        HNONWYCELRlbl.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRlbl.text = AppDelegate.unravelEncrypted(Landmarks: "0b opwriariesae")
        HNONWYCELRlbl.textAlignment = .center
        HNONWYCELRlbl.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        HNONWYCELRlbl.textColor = .black
        // Background color: red="1" green="0.996" blue="0.149"
        HNONWYCELRlbl.backgroundColor = UIColor(red: 1.0, green: 0.996, blue: 0.149, alpha: 1.0)
        return HNONWYCELRlbl
    }()
    
    // outfitDecoration (pPn-ZG-pfF)
    let HNONWYCELRoutfitDecoration: UIButton = {
        let HNONWYCELRtton = UIButton(type: .custom)
        HNONWYCELRtton.translatesAutoresizingMaskIntoConstraints = false
        // Assumes "HNONWYCoutfitWay" is an asset available
        HNONWYCELRtton.setImage(UIImage(named: "HNONWYCoutfitWay"), for: .normal)
        return HNONWYCELRtton
    }()
    
    // styleEmbellishment (AiG-9F-RgK)
    let HNONWYCELRstyleEmbellishment: UIButton = {
        let HNONWYCELRton = UIButton(type: .custom)
        HNONWYCELRton.translatesAutoresizingMaskIntoConstraints = false
        // Assumes "HNONWYCqinfu" is an asset available
        HNONWYCELRton.setImage(UIImage(named: "HNONWYCqinfu"), for: .normal)
        return HNONWYCELRton
    }()
    
    // Unconnected image view (f3c-bb-db9)
    let HNONWYCELRtopRightImageView: UIImageView = {
        let HNONWYCELRimg = UIImageView()
        HNONWYCELRimg.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRimg.clipsToBounds = true
        HNONWYCELRimg.contentMode = .scaleAspectFit
        // Assumes "HNONWYCstyleOut" is an asset available
        HNONWYCELRimg.image = UIImage(named: "HNONWYCstyleOut")
        return HNONWYCELRimg
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        HNONWYCELRpatternlayer()
        HNONWYCEwardrobeOrnament()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HNONWYCELRpatternlayer()
        HNONWYCEwardrobeOrnament()
    }
    
    // MARK: - View Setup and Styling
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HNONWYCEwardrobeOrnament()
    }
    
    private func HNONWYCELRpatternlayer() {
        contentView.addSubview(HNONWYCELRlimited)
        contentView.addSubview(HNONWYCELRfiberflow)
        contentView.addSubview(HNONWYCELRtopRightImageView) // Adding the un-connected top-right image view

        HNONWYCELRfiberflow.addSubview(HNONWYCELRwardrobeAdornment)
        HNONWYCELRfiberflow.addSubview(HNONWYCELRstyleTrappings)
        HNONWYCELRfiberflow.addSubview(HNONWYCELRoutfitDecoration)
        HNONWYCELRfiberflow.addSubview(HNONWYCELRstyleEmbellishment)
        
        NSLayoutConstraint.activate([
            // limited Constraints (pgE-FW-dSr) - Full size of cell
            HNONWYCELRlimited.topAnchor.constraint(equalTo: contentView.topAnchor),
            HNONWYCELRlimited.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            HNONWYCELRlimited.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HNONWYCELRlimited.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            // topRightImageView Constraints (f3c-bb-db9)
            HNONWYCELRtopRightImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            HNONWYCELRtopRightImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            HNONWYCELRtopRightImageView.widthAnchor.constraint(equalToConstant: 30),
            HNONWYCELRtopRightImageView.heightAnchor.constraint(equalToConstant: 30),
            
            // bottomContainerView Constraints (RWo-EA-J9N)
            HNONWYCELRfiberflow.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HNONWYCELRfiberflow.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HNONWYCELRfiberflow.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            HNONWYCELRfiberflow.heightAnchor.constraint(equalToConstant: 78),
            
            // wardrobeAdornment Constraints (cxi-S7-qeE)
            HNONWYCELRwardrobeAdornment.topAnchor.constraint(equalTo: HNONWYCELRfiberflow.topAnchor, constant: 12),
            HNONWYCELRwardrobeAdornment.leadingAnchor.constraint(equalTo: HNONWYCELRfiberflow.leadingAnchor, constant: 12),
            HNONWYCELRwardrobeAdornment.trailingAnchor.constraint(equalTo: HNONWYCELRfiberflow.trailingAnchor, constant: -32), // Trailing constraint to allow space for the button
            
            // styleTrappings Constraints (gN5-4b-DIF)
            HNONWYCELRstyleTrappings.leadingAnchor.constraint(equalTo: HNONWYCELRfiberflow.leadingAnchor, constant: 12),
            HNONWYCELRstyleTrappings.topAnchor.constraint(equalTo: HNONWYCELRwardrobeAdornment.bottomAnchor, constant: 8),
            HNONWYCELRstyleTrappings.widthAnchor.constraint(equalToConstant: 58),
            HNONWYCELRstyleTrappings.heightAnchor.constraint(equalToConstant: 24),
            
            // outfitDecoration Constraints (pPn-ZG-pfF)
            HNONWYCELRoutfitDecoration.leadingAnchor.constraint(equalTo: HNONWYCELRstyleTrappings.trailingAnchor, constant: 6),
            HNONWYCELRoutfitDecoration.centerYAnchor.constraint(equalTo: HNONWYCELRstyleTrappings.centerYAnchor),
            HNONWYCELRoutfitDecoration.widthAnchor.constraint(equalToConstant: 69),
            HNONWYCELRoutfitDecoration.heightAnchor.constraint(equalToConstant: 24),
            
            // styleEmbellishment Constraints (AiG-9F-RgK)
            HNONWYCELRstyleEmbellishment.trailingAnchor.constraint(equalTo: HNONWYCELRfiberflow.trailingAnchor, constant: -12),
            HNONWYCELRstyleEmbellishment.centerYAnchor.constraint(equalTo: HNONWYCELRfiberflow.centerYAnchor),
            HNONWYCELRstyleEmbellishment.widthAnchor.constraint(equalToConstant: 36),
            HNONWYCELRstyleEmbellishment.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func HNONWYCEwardrobeOrnament() {
        HNONWYCELRstyleTrappings.layer.cornerRadius = 12
        HNONWYCELRstyleTrappings.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
    }
    
    // MARK: - Data Configuration
    
    func HNONWYCEwardrobeAccoutrement(HNONWYCEoutfit: Dictionary<String, Any>) {
        HNONWYCELRlimited.HNONWYCELRoutfitTherapist(HNONWYCELRfrom: HNONWYCEoutfit["styleAssessment"] as? String ?? "")
        HNONWYCELRwardrobeAdornment.text = HNONWYCEoutfit["outfitRemix"] as? String
        let prise = HNONWYCEoutfit["fashionTips"] as? Int ?? 0
        HNONWYCELRstyleTrappings.text = "\(prise) praise"
    }
}
