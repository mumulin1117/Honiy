//
//  OutfitHeaterCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class OutfitHeaterCell: UICollectionViewCell {

    // MARK: - UI Components (Outlets and other views from XIB)
    
    // styleKiln (vzA-8l-W7T)
    let styleKiln: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    // outfitStove (XKR-Cn-Z34)
    let outfitStove: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground // systemColor in XIB
        return view
    }()
    
    // styleCooker (3c0-MF-4m5)
    let styleCooker: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // laonheng (bFp-Z2-qNg)
    let laonheng: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
       
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
      
        return label
    }()
    
    // laongoide (dH4-np-6Vf)
    let laongoide: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
       
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.black.withAlphaComponent(0.5)
      
        return label
    }()

    // wardrobeOven (H2V-0F-uR4)
    let wardrobeOven: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "outfitAs") // Assumes image asset exists
        return imageView
    }()
    
    // Unconnected image view (b6a-Ov-fhb)
    let wardrobeCoolerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "wardrobeCooler") // Assumes image asset exists
        return imageView
    }()
    
    // outfitFurnace (PqH-zn-uTJ)
    let outfitFurnace: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "styleInstrument"), for: .normal) // Assumes image asset exists
        return button
    }()
    
    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        applyStyling()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        applyStyling()
    }
    
    // MARK: - Styling and Setup

    override func awakeFromNib() {
        super.awakeFromNib()
        applyStyling()
    }
    
    private func applyStyling() {
        outfitStove.layer.cornerRadius = 32
        outfitStove.layer.masksToBounds = true
        
        styleKiln.layer.cornerRadius = 20
        styleKiln.layer.masksToBounds = true
        
        styleCooker.layer.cornerRadius = 20
        styleCooker.layer.masksToBounds = true
    }
    
    private func setupViews() {
        // Add main components to contentView
        contentView.addSubview(styleKiln)
        contentView.addSubview(outfitStove)
        contentView.addSubview(wardrobeCoolerImageView)
        contentView.addSubview(wardrobeOven)
        contentView.addSubview(outfitFurnace)
        
        // Add subviews to outfitStove
        outfitStove.addSubview(styleCooker)
        outfitStove.addSubview(laonheng)
        outfitStove.addSubview(laongoide)
        
        // Setup Constraints
        NSLayoutConstraint.activate([
            // styleKiln (vzA-8l-W7T) - Main image
            styleKiln.topAnchor.constraint(equalTo: contentView.topAnchor),
            styleKiln.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            styleKiln.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            styleKiln.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -33), // bottom 33 away from cell bottom

            // outfitStove (XKR-Cn-Z34) - Bottom container view
            outfitStove.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            outfitStove.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            outfitStove.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            outfitStove.heightAnchor.constraint(equalToConstant: 64),
            
            // wardrobeCoolerImageView (b6a-Ov-fhb) - Right-side icon, bottom
            wardrobeCoolerImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            wardrobeCoolerImageView.widthAnchor.constraint(equalToConstant: 44),
            wardrobeCoolerImageView.heightAnchor.constraint(equalToConstant: 44),
            wardrobeCoolerImageView.bottomAnchor.constraint(equalTo: outfitStove.topAnchor, constant: -20), // 20pt spacing to outfitStove
            
            // wardrobeOven (H2V-0F-uR4) - Right-side icon, middle
            wardrobeOven.centerXAnchor.constraint(equalTo: wardrobeCoolerImageView.centerXAnchor),
            wardrobeOven.bottomAnchor.constraint(equalTo: wardrobeCoolerImageView.topAnchor, constant: -20),
            wardrobeOven.widthAnchor.constraint(equalToConstant: 44),
            wardrobeOven.heightAnchor.constraint(equalToConstant: 44),
            
            // outfitFurnace (PqH-zn-uTJ) - Top-left button
            outfitFurnace.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            outfitFurnace.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            outfitFurnace.widthAnchor.constraint(equalToConstant: 36),
            outfitFurnace.heightAnchor.constraint(equalToConstant: 36),

            // styleCooker (3c0-MF-4m5) - Avatar inside outfitStove
            styleCooker.leadingAnchor.constraint(equalTo: outfitStove.leadingAnchor, constant: 12),
            styleCooker.centerYAnchor.constraint(equalTo: outfitStove.centerYAnchor),
            styleCooker.widthAnchor.constraint(equalToConstant: 40),
            styleCooker.heightAnchor.constraint(equalToConstant: 40),
            
            // laonheng (bFp-Z2-qNg) - Top label inside outfitStove
            laonheng.leadingAnchor.constraint(equalTo: styleCooker.trailingAnchor, constant: 6),
            laonheng.topAnchor.constraint(equalTo: styleCooker.topAnchor),
            laonheng.trailingAnchor.constraint(equalTo: outfitStove.trailingAnchor, constant: -13),
            
            // laongoide (dH4-np-6Vf) - Bottom label inside outfitStove
            laongoide.leadingAnchor.constraint(equalTo: laonheng.leadingAnchor),
            laongoide.topAnchor.constraint(equalTo: laonheng.bottomAnchor, constant: 1),
            laongoide.trailingAnchor.constraint(equalTo: outfitStove.trailingAnchor, constant: -19)
        ])
    }

    // MARK: - Data Configuration (from OutfitHeaterCell.swift)
    
    func wardrobeAccoutrement(outfit: Dictionary<String, Any>) {
        styleKiln.outfitTherapist(from: (outfit["outfitGenerator"] as? Array<String>)?.first ?? "")
        styleCooker.outfitTherapist(from: outfit["styleArchetype"] as? String ?? "")
       
        laonheng.text = outfit["colorAnalysis"] as? String
        
        laongoide.text = outfit["outfitRemix"] as? String
    }
}
