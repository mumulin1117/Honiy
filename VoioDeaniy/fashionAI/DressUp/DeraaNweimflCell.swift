import UIKit

class DeraaNweimflCell: UICollectionViewCell {

    // MARK: - UI Components (XIB Outlets)

    // Equivalent to styleInstrument (6ZG-xA-OZs in XIB)
    let styleInstrument: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "New" // Placeholder text from XIB
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.31314174107142856)
        // Corner radius handled in awakeFromNib/wardrobeOrnament
        return label
    }()
    
    // Equivalent to wardrobeImplement (Fmq-k8-9Hh in XIB)
    let wardrobeImplement: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        // Corner radius handled in awakeFromNib/wardrobeOrnament
        return imageView
    }()
    
    // Equivalent to wardrobeAdornment (OVg-KZ-BJw in XIB)
    let wardrobeAdornment: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
 
        label.numberOfLines = 2
     
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        label.textColor = UIColor(white: 0.33333333333333331, alpha: 1.0)
        return label
    }()
    
    // Equivalent to styleTrappings (dKQ-u9-ib5 in XIB)
    let styleTrappings: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.numberOfLines = 2
      
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        // Corner radius handled in wardrobeOrnament
        return label
    }()
    
    // Equivalent to outfitDecoration (edh-AW-WKw in XIB)
    let outfitDecoration: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        // Assumes "outfitApparatus" is available in the asset catalog
        button.setImage(UIImage(named: "outfitApparatus"), for: .normal)
        return button
    }()
    
    // Equivalent to styleEmbellishment (QeP-Xb-m9l in XIB)
    let styleEmbellishment: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    // Additional views from XIB to maintain structure
    let bottomContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // Background color: red=0.0, green=0.0, blue=0.0, alpha=0.3051618304
        view.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.3051618304)
        return view
    }()
    
    // Additional decorative view from XIB (aFK-rv-ZJ2 in XIB)
    let centerIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        
        imageView.image = UIImage(named: "Dapingu")
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
    
    // MARK: - Setup and Layout
    
    private func setupViews() {
        // Add subviews to the cell's contentView
        contentView.addSubview(styleEmbellishment)
        contentView.addSubview(bottomContainerView)
        contentView.addSubview(styleInstrument)
        contentView.addSubview(centerIconImageView)

        // Add subviews to the bottom container
        bottomContainerView.addSubview(wardrobeAdornment)
        bottomContainerView.addSubview(outfitDecoration)
        bottomContainerView.addSubview(wardrobeImplement)
        bottomContainerView.addSubview(styleTrappings)

        // Apply Constraints
        NSLayoutConstraint.activate([
            // styleEmbellishment (Main Image: QeP-Xb-m9l) Constraints
            styleEmbellishment.topAnchor.constraint(equalTo: contentView.topAnchor),
            styleEmbellishment.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            styleEmbellishment.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            // bottomContainerView (xp4-XK-sER) Constraints
            bottomContainerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            bottomContainerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            bottomContainerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            bottomContainerView.heightAnchor.constraint(equalToConstant: 98), // I8X-X2-YwQ
            
            // Link styleEmbellishment to bottomContainerView
            styleEmbellishment.bottomAnchor.constraint(equalTo: bottomContainerView.topAnchor), // hB9-DG-rvT
            
            // styleInstrument (New Label: 6ZG-xA-OZs) Constraints
            styleInstrument.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12), // 7Xn-p6-AkF
            styleInstrument.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12), // 7HM-SJ-VgU
            styleInstrument.widthAnchor.constraint(equalToConstant: 46), // KaN-dD-Yky
            styleInstrument.heightAnchor.constraint(equalToConstant: 22), // 8yE-vr-e1f
            
            // centerIconImageView (Dapingu Image: aFK-rv-ZJ2) Constraints
            centerIconImageView.centerXAnchor.constraint(equalTo: styleEmbellishment.centerXAnchor), // c4W-Ks-35x
            centerIconImageView.centerYAnchor.constraint(equalTo: styleEmbellishment.centerYAnchor), // 4s0-1E-b3q
            centerIconImageView.widthAnchor.constraint(equalToConstant: 46), // m30-VP-QSO
            centerIconImageView.heightAnchor.constraint(equalToConstant: 46), // NSo-ne-K8C
            
            // MARK: bottomContainerView Subview Constraints
            
            // wardrobeAdornment (Upper Label: OVg-KZ-BJw) Constraints
            wardrobeAdornment.topAnchor.constraint(equalTo: bottomContainerView.topAnchor, constant: 12), // TFI-qx-jvB
            wardrobeAdornment.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor, constant: 12), // WmG-xz-5Ez
            wardrobeAdornment.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor, constant: -32), // fHU-sw-R2Z
            
            // wardrobeImplement (Bottom Left Image: Fmq-k8-9Hh) Constraints
            wardrobeImplement.leadingAnchor.constraint(equalTo: wardrobeAdornment.leadingAnchor), // d0i-zd-GAs
            wardrobeImplement.topAnchor.constraint(equalTo: wardrobeAdornment.bottomAnchor, constant: 3), // MkS-NQ-59x
            wardrobeImplement.widthAnchor.constraint(equalToConstant: 32), // bTS-7Z-8aM
            wardrobeImplement.heightAnchor.constraint(equalToConstant: 32), // rw4-gQ-S1h
            
            // outfitDecoration (Button: edh-AW-WKw) Constraints
            outfitDecoration.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor, constant: -12), // MVQ-JO-TjL
            outfitDecoration.centerYAnchor.constraint(equalTo: bottomContainerView.centerYAnchor), // APJ-yo-ptX
            outfitDecoration.widthAnchor.constraint(equalToConstant: 36), // lKF-iD-lTJ
            outfitDecoration.heightAnchor.constraint(equalToConstant: 36), // Lj4-bh-iyz
            
            // styleTrappings (Bottom Label: dKQ-u9-ib5) Constraints
            styleTrappings.leadingAnchor.constraint(equalTo: wardrobeImplement.trailingAnchor, constant: 8), // LM4-2g-cDs
            styleTrappings.trailingAnchor.constraint(equalTo: outfitDecoration.leadingAnchor, constant: -8), // OWL-sS-MKW
            styleTrappings.centerYAnchor.constraint(equalTo: wardrobeImplement.centerYAnchor), // OOO-vo-bUp
        ])
    }
    
    // MARK: - Data Configuration

    func wardrobeAccoutrement(outfit: Dictionary<String, Any>) {
        // NOTE: outfitTherapist is assumed to be an extension method on UIImageView
        (wardrobeImplement as? UIImageView)?.outfitTherapist(from: outfit["styleArchetype"] as? String ?? "")
        (styleEmbellishment as? UIImageView)?.outfitTherapist(from: outfit["styleAssessment"] as? String ?? "")
       
        styleTrappings.text = outfit["colorAnalysis"] as? String
        wardrobeAdornment.text = outfit["outfitRemix"] as? String
    }
    
    // MARK: - Styling

    override func awakeFromNib() {
        super.awakeFromNib()
        // Note: awakeFromNib is generally used for XIB loading, but keeping
        // the original styling calls as per the request to combine code.
        wardrobeOrnament()
        
        styleInstrument.layer.cornerRadius = 12
        styleInstrument.layer.masksToBounds = true
    }

    
    private func wardrobeOrnament()  {
        styleTrappings.layer.cornerRadius = 10
        styleTrappings.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        
        wardrobeImplement.layer.cornerRadius = 16
        wardrobeImplement.layer.masksToBounds = true
    }
}
