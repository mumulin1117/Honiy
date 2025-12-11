import UIKit

// MARK: - Delegate Protocol

protocol HNONWYCELRAdornmentCelldelegate: AnyObject {
    func HNONWYCELRadornmentCell(_ data: Dictionary<String, Any>)
    func HNONWYCELRgiventerUserInafomation(_ dataID: Int?)
}

// MARK: - Table View Cell Implementation

class HNONWYCELRAdornmentCell: UITableViewCell {
    
    // MARK: - Properties
    
    weak var HNONWYCELRdarm: HNONWYCELRAdornmentCelldelegate?
    
    // Equivalent to UILabel "Popular" (XQX-F3-asp in XIB)
    let HNONWYCELRdresscrafting: UILabel = {
        let HNONWYCELRlookconstruction = UILabel()
        HNONWYCELRlookconstruction.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRlookconstruction.text = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Poojpnuulcayr")
        HNONWYCELRlookconstruction.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        HNONWYCELRlookconstruction.textColor = .black
        return HNONWYCELRlookconstruction
    }()
    
    // Equivalent to UICollectionView (outfitDecoration in XIB)
    let HNONWYCELRoutfitDecoration: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let HNONWYCELRfashionperception = UICollectionView(frame: .zero, collectionViewLayout: layout)
        HNONWYCELRfashionperception.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRfashionperception.backgroundColor = .clear
        HNONWYCELRfashionperception.showsHorizontalScrollIndicator = false
        return HNONWYCELRfashionperception
    }()
    
    var HNONWYCELRElowen = Array<Dictionary<String, Any>>() {
        didSet {
            self.HNONWYCELRoutfitDecoration.reloadData()
        }
    }
    
    // MARK: - Initialization

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        HNONWYCELRmaterialweaving()
        HNONWYCELRstyleEmbellishment()
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HNONWYCELRmaterialweaving()
        HNONWYCELRstyleEmbellishment()
        self.backgroundColor = .clear
    }
    
    // MARK: - View Setup
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        HNONWYCELRstyleEmbellishment()
    }

    private func HNONWYCELRstyleEmbellishment() {
        let HNONWYCELRwardrobeRegalia = UICollectionViewFlowLayout()
        HNONWYCELRwardrobeRegalia.itemSize = CGSize(width: 240, height: 300)
        HNONWYCELRwardrobeRegalia.scrollDirection = .horizontal
        HNONWYCELRwardrobeRegalia.minimumLineSpacing = 12
        HNONWYCELRwardrobeRegalia.minimumInteritemSpacing = 12
        HNONWYCELRwardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        HNONWYCELRoutfitDecoration.collectionViewLayout = HNONWYCELRwardrobeRegalia
        HNONWYCELRoutfitDecoration.delegate = self
        HNONWYCELRoutfitDecoration.dataSource = self
        HNONWYCELRoutfitDecoration.backgroundColor = .clear
        HNONWYCELRoutfitDecoration.showsHorizontalScrollIndicator = false
        // Assumes StyleRaimentCell is defined elsewhere
        HNONWYCELRoutfitDecoration.register(HNONWYCELRStyleRaimentCell.self, forCellWithReuseIdentifier: "HNONWYCELRStyleRaimentCell")
    }
    
    private func HNONWYCELRmaterialweaving() {
        contentView.addSubview(HNONWYCELRdresscrafting)
        contentView.addSubview(HNONWYCELRoutfitDecoration)
        
        NSLayoutConstraint.activate([
            // titleLabel Constraints (XQX-F3-asp)
            HNONWYCELRdresscrafting.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            HNONWYCELRdresscrafting.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            // outfitDecoration Constraints (AkP-7E-MGo)
            HNONWYCELRoutfitDecoration.topAnchor.constraint(equalTo: HNONWYCELRdresscrafting.bottomAnchor, constant: 10),
            HNONWYCELRoutfitDecoration.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            HNONWYCELRoutfitDecoration.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            HNONWYCELRoutfitDecoration.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}


// MARK: - Collection View Delegate & Data Source

extension HNONWYCELRAdornmentCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HNONWYCELRElowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let HNONWYCELRoutfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "HNONWYCELRStyleRaimentCell", for: indexPath) as? HNONWYCELRStyleRaimentCell else {
            return UICollectionViewCell()
        }
        
        HNONWYCELRoutfitFinery.HNONWYCEwardrobeAccoutrement(HNONWYCEoutfit: HNONWYCELRElowen[indexPath.row])
        HNONWYCELRoutfitFinery.HNONWYCELRoutfitDecoration.tag = indexPath.row
        HNONWYCELRoutfitFinery.HNONWYCELRoutfitDecoration.addTarget(self, action: #selector(HNONWYCELRgiventerUserInafomation(HNONWYCELRsua:)), for: .touchUpInside)
        HNONWYCELRoutfitFinery.HNONWYCELRstyleEmbellishment.tag = 1000 + indexPath.row
        HNONWYCELRoutfitFinery.HNONWYCELRstyleEmbellishment.addTarget(self, action: #selector(HNONWYCELRgiventerUserInafomation(HNONWYCELRsua:)), for: .touchUpInside)
        return HNONWYCELRoutfitFinery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.HNONWYCELRdarm?.HNONWYCELRadornmentCell(HNONWYCELRElowen[indexPath.row])
    }
    
    @objc func HNONWYCELRgiventerUserInafomation(HNONWYCELRsua: UIButton) {
        
        if HNONWYCELRsua.tag > 900 {
            self.HNONWYCELRdarm?.HNONWYCELRgiventerUserInafomation(nil)
            return
        }
        
        let HNONWYCELRisukkk = HNONWYCELRElowen[HNONWYCELRsua.tag]["styleMoodboard"] as? String ?? "0"
        if let dataID = Int(HNONWYCELRisukkk) {
            self.HNONWYCELRdarm?.HNONWYCELRgiventerUserInafomation(dataID)
        }
    }
}
