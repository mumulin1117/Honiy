import UIKit

class HNONWYCELRDeraaNweimflCell: UICollectionViewCell {

    // MARK: - UI Components (XIB Outlets)

    // Equivalent to HNONWYCsstyleInstrument (6ZG-xA-OZs in XIB)
    let HNONWYCELRstyleInstrument: UILabel = {
        let HNONWYCELRlabel = UILabel()
        HNONWYCELRlabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRlabel.text = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Nnesw")// Placeholder text from XIB
        HNONWYCELRlabel.textAlignment = .center
        HNONWYCELRlabel.font = UIFont.boldSystemFont(ofSize: 12)
        HNONWYCELRlabel.textColor = .white
        HNONWYCELRlabel.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.31314174107142856)
        // Corner radius handled in awakeFromNib/wardrobeOrnament
        return HNONWYCELRlabel
    }()
    
    // Equivalent to HNONWYCELRwardrobeImplement (Fmq-k8-9Hh in XIB)
    let HNONWYCELRwardrobeImplement: UIImageView = {
        let HNONWYCELRimageView = UIImageView()
        HNONWYCELRimageView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRimageView.clipsToBounds = true
        HNONWYCELRimageView.contentMode = .scaleAspectFill
        // Corner radius handled in awakeFromNib/wardrobeOrnament
        return HNONWYCELRimageView
    }()
    
    // Equivalent to HNONWYCELRwardrobeAdornment (OVg-KZ-BJw in XIB)
    let HNONWYCELRwardrobeAdornment: UILabel = {
        let HNONWYCELRlabel = UILabel()
        HNONWYCELRlabel.translatesAutoresizingMaskIntoConstraints = false
 
        HNONWYCELRlabel.numberOfLines = 2
     
        HNONWYCELRlabel.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        HNONWYCELRlabel.textColor = UIColor(white: 0.33333333333333331, alpha: 1.0)
        return HNONWYCELRlabel
    }()
    
    // Equivalent to styleTrappings (dKQ-u9-ib5 in XIB)
    let HNONWYCELRstyleTrappings: UILabel = {
        let HNONWYCELRlabel = UILabel()
        HNONWYCELRlabel.translatesAutoresizingMaskIntoConstraints = false
        
        HNONWYCELRlabel.numberOfLines = 2
      
        HNONWYCELRlabel.font = UIFont.boldSystemFont(ofSize: 15)
        HNONWYCELRlabel.textColor = .black
        // Corner radius handled in wardrobeOrnament
        return HNONWYCELRlabel
    }()
    
    // Equivalent to outfitDecoration (edh-AW-WKw in XIB)
    let HNONWYCELRoutfitDecoration: UIButton = {
        let HNONWYCELRbutton = UIButton(type: .custom)
        HNONWYCELRbutton.translatesAutoresizingMaskIntoConstraints = false
        // Assumes "HNONWYCEoutfitApparatus" is available in the asset catalog
        HNONWYCELRbutton.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform:"HNONWYCEoutfitApparatus"), for: .normal)
        return HNONWYCELRbutton
    }()
    
    // Equivalent to styleEmbellishment (QeP-Xb-m9l in XIB)
    let HNONWYCELRstyleEmbellishment: UIImageView = {
        let HNONWYCELRimageView = UIImageView()
        HNONWYCELRimageView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRimageView.clipsToBounds = true
        HNONWYCELRimageView.contentMode = .scaleAspectFill
        return HNONWYCELRimageView
    }()
    
    // Additional views from XIB to maintain structure
    let HNONWYCELRfabricdraping: UIView = {
        let HNONWYCELRstitche = UIView()
        HNONWYCELRstitche.translatesAutoresizingMaskIntoConstraints = false
        // Background color: red=0.0, green=0.0, blue=0.0, alpha=0.3051618304
        HNONWYCELRstitche.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.3051618304)
        return HNONWYCELRstitche
    }()
    
    // Additional decorative view from XIB (aFK-rv-ZJ2 in XIB)
    let HNONWYCELRcenterIconImageView: UIImageView = {
        let HNONWYCELRView = UIImageView()
        HNONWYCELRView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRView.clipsToBounds = true
        HNONWYCELRView.contentMode = .scaleAspectFit
        
        HNONWYCELRView.image = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform:"HNONWYCELRDapingu")
        return HNONWYCELRView
    }()
    
    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        HNONWYCELRfiberanalysis()
        HNONWYCELRoutfitnarrative()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HNONWYCELRfiberanalysis()
        HNONWYCELRoutfitnarrative()
    }
    
    // MARK: - Setup and Layout
    
    private func HNONWYCELRfiberanalysis() {
        // Add subviews to the cell's contentView
        contentView.addSubview(HNONWYCELRstyleEmbellishment)
        contentView.addSubview(HNONWYCELRfabricdraping)
        contentView.addSubview(HNONWYCELRstyleInstrument)
        contentView.addSubview(HNONWYCELRcenterIconImageView)

        // Add subviews to the bottom container
        HNONWYCELRfabricdraping.addSubview(HNONWYCELRwardrobeAdornment)
        HNONWYCELRfabricdraping.addSubview(HNONWYCELRoutfitDecoration)
        HNONWYCELRfabricdraping.addSubview(HNONWYCELRwardrobeImplement)
        HNONWYCELRfabricdraping.addSubview(HNONWYCELRstyleTrappings)

        // Apply Constraints
        NSLayoutConstraint.activate([
            // styleEmbellishment (Main Image: QeP-Xb-m9l) Constraints
            HNONWYCELRstyleEmbellishment.topAnchor.constraint(equalTo: contentView.topAnchor),
            HNONWYCELRstyleEmbellishment.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HNONWYCELRstyleEmbellishment.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            // bottomContainerView (xp4-XK-sER) Constraints
            HNONWYCELRfabricdraping.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            HNONWYCELRfabricdraping.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HNONWYCELRfabricdraping.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            HNONWYCELRfabricdraping.heightAnchor.constraint(equalToConstant: 98), // I8X-X2-YwQ
            
            // Link styleEmbellishment to bottomContainerView
            HNONWYCELRstyleEmbellishment.bottomAnchor.constraint(equalTo: HNONWYCELRfabricdraping.topAnchor), // hB9-DG-rvT
            
            // HNONWYCsstyleInstrument (New Label: 6ZG-xA-OZs) Constraints
            HNONWYCELRstyleInstrument.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12), // 7Xn-p6-AkF
            HNONWYCELRstyleInstrument.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12), // 7HM-SJ-VgU
            HNONWYCELRstyleInstrument.widthAnchor.constraint(equalToConstant: 46), // KaN-dD-Yky
            HNONWYCELRstyleInstrument.heightAnchor.constraint(equalToConstant: 22), // 8yE-vr-e1f
            
            // centerIconImageView (HNONWYCELRDapingu Image: aFK-rv-ZJ2) Constraints
            HNONWYCELRcenterIconImageView.centerXAnchor.constraint(equalTo: HNONWYCELRstyleEmbellishment.centerXAnchor), // c4W-Ks-35x
            HNONWYCELRcenterIconImageView.centerYAnchor.constraint(equalTo: HNONWYCELRstyleEmbellishment.centerYAnchor), // 4s0-1E-b3q
            HNONWYCELRcenterIconImageView.widthAnchor.constraint(equalToConstant: 46), // m30-VP-QSO
            HNONWYCELRcenterIconImageView.heightAnchor.constraint(equalToConstant: 46), // NSo-ne-K8C
            
            // MARK: bottomContainerView Subview Constraints
            
            // wardrobeAdornment (Upper Label: OVg-KZ-BJw) Constraints
            HNONWYCELRwardrobeAdornment.topAnchor.constraint(equalTo: HNONWYCELRfabricdraping.topAnchor, constant: 12), // TFI-qx-jvB
            HNONWYCELRwardrobeAdornment.leadingAnchor.constraint(equalTo: HNONWYCELRfabricdraping.leadingAnchor, constant: 12), // WmG-xz-5Ez
            HNONWYCELRwardrobeAdornment.trailingAnchor.constraint(equalTo: HNONWYCELRfabricdraping.trailingAnchor, constant: -32), // fHU-sw-R2Z
            
            // HNONWYCELRwardrobeImplement (Bottom Left Image: Fmq-k8-9Hh) Constraints
            HNONWYCELRwardrobeImplement.leadingAnchor.constraint(equalTo: HNONWYCELRwardrobeAdornment.leadingAnchor), // d0i-zd-GAs
            HNONWYCELRwardrobeImplement.topAnchor.constraint(equalTo: HNONWYCELRwardrobeAdornment.bottomAnchor, constant: 3), // MkS-NQ-59x
            HNONWYCELRwardrobeImplement.widthAnchor.constraint(equalToConstant: 32), // bTS-7Z-8aM
            HNONWYCELRwardrobeImplement.heightAnchor.constraint(equalToConstant: 32), // rw4-gQ-S1h
            
            // outfitDecoration (Button: edh-AW-WKw) Constraints
            HNONWYCELRoutfitDecoration.trailingAnchor.constraint(equalTo: HNONWYCELRfabricdraping.trailingAnchor, constant: -12), // MVQ-JO-TjL
            HNONWYCELRoutfitDecoration.centerYAnchor.constraint(equalTo: HNONWYCELRfabricdraping.centerYAnchor), // APJ-yo-ptX
            HNONWYCELRoutfitDecoration.widthAnchor.constraint(equalToConstant: 36), // lKF-iD-lTJ
            HNONWYCELRoutfitDecoration.heightAnchor.constraint(equalToConstant: 36), // Lj4-bh-iyz
            
            // styleTrappings (Bottom Label: dKQ-u9-ib5) Constraints
            HNONWYCELRstyleTrappings.leadingAnchor.constraint(equalTo: HNONWYCELRwardrobeImplement.trailingAnchor, constant: 8), // LM4-2g-cDs
            HNONWYCELRstyleTrappings.trailingAnchor.constraint(equalTo: HNONWYCELRoutfitDecoration.leadingAnchor, constant: -8), // OWL-sS-MKW
            HNONWYCELRstyleTrappings.centerYAnchor.constraint(equalTo: HNONWYCELRwardrobeImplement.centerYAnchor), // OOO-vo-bUp
        ])
    }
    
    // MARK: - Data Configuration

    func HNONWYCELRwardrobeAccoutrement(HNONWYCELRoutfit: Dictionary<String, Any>) {
        // NOTE: outfitTherapist is assumed to be an extension method on UIImageView
        (HNONWYCELRwardrobeImplement as? UIImageView)?.HNONWYCELRoutfitTherapist(HNONWYCELRfrom: HNONWYCELRoutfit["styleArchetype"] as? String ?? "")
        (HNONWYCELRstyleEmbellishment as? UIImageView)?.HNONWYCELRoutfitTherapist(HNONWYCELRfrom: HNONWYCELRoutfit["styleAssessment"] as? String ?? "")
       
        HNONWYCELRstyleTrappings.text = HNONWYCELRoutfit["colorAnalysis"] as? String
        HNONWYCELRwardrobeAdornment.text = HNONWYCELRoutfit["outfitRemix"] as? String
    }
    
    // MARK: - Styling

    override func awakeFromNib() {
        super.awakeFromNib()
        // Note: awakeFromNib is generally used for XIB loading, but keeping
        // the original styling calls as per the request to combine code.
        HNONWYCELRoutfitnarrative()
        
        HNONWYCELRstyleInstrument.layer.cornerRadius = 12
        HNONWYCELRstyleInstrument.layer.masksToBounds = true
    }

    
    private func HNONWYCELRoutfitnarrative()  {
        HNONWYCELRstyleTrappings.layer.cornerRadius = 10
        HNONWYCELRstyleTrappings.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        
        HNONWYCELRwardrobeImplement.layer.cornerRadius = 16
        HNONWYCELRwardrobeImplement.layer.masksToBounds = true
    }
}
