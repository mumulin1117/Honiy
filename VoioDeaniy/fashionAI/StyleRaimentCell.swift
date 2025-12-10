//
//  StyleRaiment Cell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class StyleRaimentCell: UICollectionViewCell {
    
    // MARK: - UI Components
    
    // limited (pgE-FW-dSr)
    let limited: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    // RWo-EA-J9N
    let bottomContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.305)
        return view
    }()
    
    // wardrobeAdornment (cxi-S7-qeE)
    let wardrobeAdornment: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Label"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .white
       
        return label
    }()
    
    // styleTrappings (gN5-4b-DIF)
    let styleTrappings: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0 praise"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        label.textColor = .black
        // Background color: red="1" green="0.996" blue="0.149"
        label.backgroundColor = UIColor(red: 1.0, green: 0.996, blue: 0.149, alpha: 1.0)
        return label
    }()
    
    // outfitDecoration (pPn-ZG-pfF)
    let outfitDecoration: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        // Assumes "outfitWay" is an asset available
        button.setImage(UIImage(named: "outfitWay"), for: .normal)
        return button
    }()
    
    // styleEmbellishment (AiG-9F-RgK)
    let styleEmbellishment: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        // Assumes "qinfu" is an asset available
        button.setImage(UIImage(named: "qinfu"), for: .normal)
        return button
    }()
    
    // Unconnected image view (f3c-bb-db9)
    let topRightImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        // Assumes "styleOut" is an asset available
        imageView.image = UIImage(named: "styleOut")
        return imageView
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        wardrobeOrnament()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        wardrobeOrnament()
    }
    
    // MARK: - View Setup and Styling
    
    override func awakeFromNib() {
        super.awakeFromNib()
        wardrobeOrnament()
    }
    
    private func setupViews() {
        contentView.addSubview(limited)
        contentView.addSubview(bottomContainerView)
        contentView.addSubview(topRightImageView) // Adding the un-connected top-right image view

        bottomContainerView.addSubview(wardrobeAdornment)
        bottomContainerView.addSubview(styleTrappings)
        bottomContainerView.addSubview(outfitDecoration)
        bottomContainerView.addSubview(styleEmbellishment)
        
        NSLayoutConstraint.activate([
            // limited Constraints (pgE-FW-dSr) - Full size of cell
            limited.topAnchor.constraint(equalTo: contentView.topAnchor),
            limited.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            limited.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            limited.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            // topRightImageView Constraints (f3c-bb-db9)
            topRightImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            topRightImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            topRightImageView.widthAnchor.constraint(equalToConstant: 30),
            topRightImageView.heightAnchor.constraint(equalToConstant: 30),
            
            // bottomContainerView Constraints (RWo-EA-J9N)
            bottomContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            bottomContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            bottomContainerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            bottomContainerView.heightAnchor.constraint(equalToConstant: 78),
            
            // wardrobeAdornment Constraints (cxi-S7-qeE)
            wardrobeAdornment.topAnchor.constraint(equalTo: bottomContainerView.topAnchor, constant: 12),
            wardrobeAdornment.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor, constant: 12),
            wardrobeAdornment.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor, constant: -32), // Trailing constraint to allow space for the button
            
            // styleTrappings Constraints (gN5-4b-DIF)
            styleTrappings.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor, constant: 12),
            styleTrappings.topAnchor.constraint(equalTo: wardrobeAdornment.bottomAnchor, constant: 8),
            styleTrappings.widthAnchor.constraint(equalToConstant: 58),
            styleTrappings.heightAnchor.constraint(equalToConstant: 24),
            
            // outfitDecoration Constraints (pPn-ZG-pfF)
            outfitDecoration.leadingAnchor.constraint(equalTo: styleTrappings.trailingAnchor, constant: 6),
            outfitDecoration.centerYAnchor.constraint(equalTo: styleTrappings.centerYAnchor),
            outfitDecoration.widthAnchor.constraint(equalToConstant: 69),
            outfitDecoration.heightAnchor.constraint(equalToConstant: 24),
            
            // styleEmbellishment Constraints (AiG-9F-RgK)
            styleEmbellishment.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor, constant: -12),
            styleEmbellishment.centerYAnchor.constraint(equalTo: bottomContainerView.centerYAnchor),
            styleEmbellishment.widthAnchor.constraint(equalToConstant: 36),
            styleEmbellishment.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    private func wardrobeOrnament() {
        styleTrappings.layer.cornerRadius = 12
        styleTrappings.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
    }
    
    // MARK: - Data Configuration
    
    func wardrobeAccoutrement(outfit: Dictionary<String, Any>) {
        limited.outfitTherapist(from: outfit["styleAssessment"] as? String ?? "")
        wardrobeAdornment.text = outfit["outfitRemix"] as? String
        let prise = outfit["fashionTips"] as? Int ?? 0
        styleTrappings.text = "\(prise) praise"
    }
}
