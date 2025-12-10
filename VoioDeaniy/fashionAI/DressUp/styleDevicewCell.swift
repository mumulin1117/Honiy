import UIKit

// MARK: - Delegate Protocol

protocol styleDevicewCelldelegate: AnyObject { // Changed to AnyObject for weak reference support
    func styleDevicetCell(_ data: Dictionary<String, Any>?)
}

// MARK: - Table View Cell Implementation

class styleDevicewCell: UITableViewCell {
    
    // MARK: - Properties and Outlets

    // Delegate property changed to weak to prevent retain cycles
    weak var darm: styleDevicewCelldelegate?
    
    // Equivalent to outfitDecoration (91f-U3-Cpo in XIB)
    let outfitDecoration: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        // Background color is clear (white.0.0 in XIB, .clear in Swift code)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    // Title Label (O98-y3-qsN in XIB)
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Dress Up Video" // Text from XIB
        label.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        label.textColor = .black // Default text color
        return label
    }()

    // Data source for the collection view
    var Elowen = Array<Dictionary<String, Any>>() {
        didSet {
            outfitDecoration.reloadData()
        }
    }
    
    // MARK: - Initialization

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        styleEmbellishment()
        self.backgroundColor = .clear // From original awakeFromNib
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        styleEmbellishment()
        self.backgroundColor = .clear // From original awakeFromNib
    }
    
    // MARK: - View Setup

    // Original awakeFromNib content is merged into initializers and styleEmbellishment
    override func awakeFromNib() {
        super.awakeFromNib()
        // No need to call styleEmbellishment() or set self.backgroundColor here if using
        // the required initializers above, but keeping the original structure for reference.
    }

    // Configures the collection view layout and properties (Equivalent to XIB setup + original styleEmbellishment)
    private func styleEmbellishment() {
        // Re-apply the FlowLayout settings from the original Swift file
        let wardrobeRegalia = UICollectionViewFlowLayout()
        wardrobeRegalia.itemSize = CGSize(width: 240, height: 306)
        wardrobeRegalia.scrollDirection = .horizontal
        wardrobeRegalia.minimumLineSpacing = 12
        wardrobeRegalia.minimumInteritemSpacing = 12
        wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        outfitDecoration.collectionViewLayout = wardrobeRegalia
        outfitDecoration.delegate = self
        outfitDecoration.dataSource = self
        
        // Ensure the cell class DeraaNweimflCell is registered.
        // NOTE: DeraaNweimflCell must be defined and available.
        outfitDecoration.register(DeraaNweimflCell.self, forCellWithReuseIdentifier: "DeraaNweimflCell")
    }
    
    private func setupViews() {
        // Add all components to the cell's contentView
        contentView.addSubview(titleLabel)
        contentView.addSubview(outfitDecoration)
        
        // Apply Constraints (Based on XIB layout)
        NSLayoutConstraint.activate([
            
            // titleLabel (O98-y3-qsN) Constraints
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15), // yAw-TA-dTX
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12), // pKc-D3-lHf
            // The XIB doesn't have a trailing constraint for the label, so we omit one here.
            
            // outfitDecoration (91f-U3-Cpo) Constraints
            outfitDecoration.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10), // ZA2-26-sHo
            outfitDecoration.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12), // aOZ-2e-l0b
            outfitDecoration.trailingAnchor.constraint(equalTo: contentView.trailingAnchor), // OpC-Nn-giF
            outfitDecoration.heightAnchor.constraint(equalToConstant: 306), // EjP-vw-ZH4
            // No bottom constraint is explicitly set in the XIB but since the height is fixed,
            // the cell height adapts to this content + padding.
        ])
    }
}


// MARK: - Collection View Delegate & Data Source

extension styleDevicewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Elowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "DeraaNweimflCell", for: indexPath) as? DeraaNweimflCell else {
            return UICollectionViewCell()
        }
        
        outfitFinery.wardrobeAccoutrement(outfit: Elowen[indexPath.row])
        // Connect the button's action to the cell's target method
        outfitFinery.outfitDecoration.addTarget(self, action: #selector(sjOIShguReport), for: .touchUpInside)
        
        return outfitFinery
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Call the delegate method upon selecting a collection view cell
        darm?.styleDevicetCell(Elowen[indexPath.row])
    }
    
    // MARK: - Action

    @objc func sjOIShguReport() {
        // Call the delegate method when the button inside a collection view cell is tapped
        darm?.styleDevicetCell(nil)
    }
}
