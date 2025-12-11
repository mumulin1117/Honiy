import UIKit

// MARK: - Delegate Protocol

protocol HNONWYCELRstyleDevicewCelldelegate: AnyObject { // Changed to AnyObject for weak reference support
    func HNONWYCELRstyleDevicetCell(_ data: Dictionary<String, Any>?)
}

// MARK: - Table View Cell Implementation

class HNONWYCELRstyleDevicewCell: UITableViewCell {
    
    // MARK: - Properties and Outlets

    // Delegate property changed to weak to prevent retain cycles
    weak var HNONWYCELRdarm: HNONWYCELRstyleDevicewCelldelegate?
    
    // Equivalent to HNONWYCELRoutfitDecoration (91f-U3-Cpo in XIB)
    let HNONWYCELRoutfitDecoration: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let HNONWYCELRfabricsynergy = UICollectionView(frame: .zero, collectionViewLayout: layout)
        HNONWYCELRfabricsynergy.translatesAutoresizingMaskIntoConstraints = false
        // Background color is clear (white.0.0 in XIB, .clear in Swift code)
        HNONWYCELRfabricsynergy.backgroundColor = .clear
        HNONWYCELRfabricsynergy.showsHorizontalScrollIndicator = false
        return HNONWYCELRfabricsynergy
    }()
    
    // Title Label (O98-y3-qsN in XIB)
    let HNONWYCELRgarmentflow: UILabel = {
        let HNONWYCELRgarmentflowlbl = UILabel()
        HNONWYCELRgarmentflowlbl.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRgarmentflowlbl.text = AppDelegate.unravelEncrypted(Landmarks: "Dgrbetsasl cUhpz bVsiidmeyo")// Text from XIB
        HNONWYCELRgarmentflowlbl.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        HNONWYCELRgarmentflowlbl.textColor = .black // Default text color
        return HNONWYCELRgarmentflowlbl
    }()

    // Data source for the collection view
    var HNONWYCELRfittingstrategy = Array<Dictionary<String, Any>>() {
        didSet {
            HNONWYCELRoutfitDecoration.reloadData()
        }
    }
    
    // MARK: - Initialization

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        HNONWYCELRtailoringlogic()
        HNONWYCELRstyleEmbellishment()
        self.backgroundColor = .clear // From original awakeFromNib
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        HNONWYCELRtailoringlogic()
        HNONWYCELRstyleEmbellishment()
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
    private func HNONWYCELRstyleEmbellishment() {
        // Re-apply the FlowLayout settings from the original Swift file
        let HNONWYCELRwardrobeRegalia = UICollectionViewFlowLayout()
        HNONWYCELRwardrobeRegalia.itemSize = CGSize(width: 240, height: 306)
        HNONWYCELRwardrobeRegalia.scrollDirection = .horizontal
        HNONWYCELRwardrobeRegalia.minimumLineSpacing = 12
        HNONWYCELRwardrobeRegalia.minimumInteritemSpacing = 12
        HNONWYCELRwardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        HNONWYCELRoutfitDecoration.collectionViewLayout = HNONWYCELRwardrobeRegalia
        HNONWYCELRoutfitDecoration.delegate = self
        HNONWYCELRoutfitDecoration.dataSource = self
        
        // Ensure the cell class DeraaNweimflCell is registered.
        // NOTE: DeraaNweimflCell must be defined and available.
        HNONWYCELRoutfitDecoration.register(HNONWYCELRDeraaNweimflCell.self, forCellWithReuseIdentifier: "DeraaNweimflCell")
    }
    
    private func HNONWYCELRtailoringlogic() {
        // Add all components to the cell's contentView
        contentView.addSubview(HNONWYCELRgarmentflow)
        contentView.addSubview(HNONWYCELRoutfitDecoration)
        
        // Apply Constraints (Based on XIB layout)
        NSLayoutConstraint.activate([
            
            // titleLabel (O98-y3-qsN) Constraints
            HNONWYCELRgarmentflow.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15), // yAw-TA-dTX
            HNONWYCELRgarmentflow.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12), // pKc-D3-lHf
            // The XIB doesn't have a trailing constraint for the label, so we omit one here.
            
            // outfitDecoration (91f-U3-Cpo) Constraints
            HNONWYCELRoutfitDecoration.topAnchor.constraint(equalTo: HNONWYCELRgarmentflow.bottomAnchor, constant: 10), // ZA2-26-sHo
            HNONWYCELRoutfitDecoration.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12), // aOZ-2e-l0b
            HNONWYCELRoutfitDecoration.trailingAnchor.constraint(equalTo: contentView.trailingAnchor), // OpC-Nn-giF
            HNONWYCELRoutfitDecoration.heightAnchor.constraint(equalToConstant: 306), // EjP-vw-ZH4
            // No bottom constraint is explicitly set in the XIB but since the height is fixed,
            // the cell height adapts to this content + padding.
        ])
    }
}


// MARK: - Collection View Delegate & Data Source

extension HNONWYCELRstyleDevicewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HNONWYCELRfittingstrategy.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "DeraaNweimflCell", for: indexPath) as? HNONWYCELRDeraaNweimflCell else {
            return UICollectionViewCell()
        }
        
        outfitFinery.HNONWYCELRwardrobeAccoutrement(HNONWYCELRoutfit: HNONWYCELRfittingstrategy[indexPath.row])
        // Connect the button's action to the cell's target method
        outfitFinery.HNONWYCELRoutfitDecoration.addTarget(self, action: #selector(HNONWYCELRsjOIShguReport), for: .touchUpInside)
        
        return outfitFinery
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Call the delegate method upon selecting a collection view cell
        HNONWYCELRdarm?.HNONWYCELRstyleDevicetCell(HNONWYCELRfittingstrategy[indexPath.row])
    }
    
    // MARK: - Action

    @objc func HNONWYCELRsjOIShguReport() {
        // Call the delegate method when the button inside a collection view cell is tapped
        HNONWYCELRdarm?.HNONWYCELRstyleDevicetCell(nil)
    }
}
