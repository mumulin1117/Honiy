import UIKit

// MARK: - Delegate Protocol

protocol AdornmentCelldelegate: AnyObject {
    func adornmentCell(_ data: Dictionary<String, Any>)
    func giventerUserInafomation(_ dataID: Int?)
}

// MARK: - Table View Cell Implementation

class AdornmentCell: UITableViewCell {
    
    // MARK: - Properties
    
    weak var darm: AdornmentCelldelegate?
    
    // Equivalent to UILabel "Popular" (XQX-F3-asp in XIB)
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Popular"
        label.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        label.textColor = .black
        return label
    }()
    
    // Equivalent to UICollectionView (outfitDecoration in XIB)
    let outfitDecoration: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    var Elowen = Array<Dictionary<String, Any>>() {
        didSet {
            self.outfitDecoration.reloadData()
        }
    }
    
    // MARK: - Initialization

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        styleEmbellishment()
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        styleEmbellishment()
        self.backgroundColor = .clear
    }
    
    // MARK: - View Setup
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        styleEmbellishment()
    }

    private func styleEmbellishment() {
        let wardrobeRegalia = UICollectionViewFlowLayout()
        wardrobeRegalia.itemSize = CGSize(width: 240, height: 300)
        wardrobeRegalia.scrollDirection = .horizontal
        wardrobeRegalia.minimumLineSpacing = 12
        wardrobeRegalia.minimumInteritemSpacing = 12
        wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        outfitDecoration.collectionViewLayout = wardrobeRegalia
        outfitDecoration.delegate = self
        outfitDecoration.dataSource = self
        outfitDecoration.backgroundColor = .clear
        outfitDecoration.showsHorizontalScrollIndicator = false
        // Assumes StyleRaimentCell is defined elsewhere
        outfitDecoration.register(StyleRaimentCell.self, forCellWithReuseIdentifier: "StyleRaimentCell")
    }
    
    private func setupViews() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(outfitDecoration)
        
        NSLayoutConstraint.activate([
            // titleLabel Constraints (XQX-F3-asp)
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            // outfitDecoration Constraints (AkP-7E-MGo)
            outfitDecoration.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            outfitDecoration.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            outfitDecoration.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            outfitDecoration.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}


// MARK: - Collection View Delegate & Data Source

extension AdornmentCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Elowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "StyleRaimentCell", for: indexPath) as? StyleRaimentCell else {
            return UICollectionViewCell()
        }
        
        outfitFinery.wardrobeAccoutrement(outfit: Elowen[indexPath.row])
        outfitFinery.outfitDecoration.tag = indexPath.row
        outfitFinery.outfitDecoration.addTarget(self, action: #selector(giventerUserInafomation(sua:)), for: .touchUpInside)
        outfitFinery.styleEmbellishment.tag = 1000 + indexPath.row
        outfitFinery.styleEmbellishment.addTarget(self, action: #selector(giventerUserInafomation(sua:)), for: .touchUpInside)
        return outfitFinery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.darm?.adornmentCell(Elowen[indexPath.row])
    }
    
    @objc func giventerUserInafomation(sua: UIButton) {
        
        if sua.tag > 900 {
            self.darm?.giventerUserInafomation(nil)
            return
        }
        
        let isukkk = Elowen[sua.tag]["styleMoodboard"] as? String ?? "0"
        if let dataID = Int(isukkk) {
            self.darm?.giventerUserInafomation(dataID)
        }
    }
}
