import UIKit

class UseriannimflCell: UICollectionViewCell {
    
    // MARK: - UI Components (XIB Outlets)

    let styleGear: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
       
        return imageView
    }()
    
    let wardrobeParaphernalia: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
       
        label.textAlignment = .natural
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black // Default text color
        return label
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
    
    // MARK: - View Setup and Styling

    private func setupViews() {
        // Set background color from XIB
        self.backgroundColor = .clear
        
        // Add subviews to the cell's contentView
        contentView.addSubview(styleGear)
        contentView.addSubview(wardrobeParaphernalia)

        // Apply Constraints (Based on XIB layout)
        NSLayoutConstraint.activate([
            // styleGear (Image: 5BU-B5-Uzb) Constraints
            styleGear.centerXAnchor.constraint(equalTo: contentView.centerXAnchor), // Iek-49-c6J
            styleGear.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 2), // hEE-kI-MHa
            styleGear.widthAnchor.constraint(equalToConstant: 60), // 8f2-tz-0WG
            styleGear.heightAnchor.constraint(equalToConstant: 60), // YQf-NO-xxb
            
            // wardrobeParaphernalia (Label: kbW-xf-3xI) Constraints
            wardrobeParaphernalia.centerXAnchor.constraint(equalTo: contentView.centerXAnchor), // 8ur-dw-q4K
            wardrobeParaphernalia.topAnchor.constraint(equalTo: styleGear.bottomAnchor, constant: 6), // XTI-5Y-QSo
        ])
    }
    
    private func applyStyling() {
        // Styling from original awakeFromNib
        styleGear.layer.cornerRadius = 30
        styleGear.layer.masksToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Ensure styling is applied even if instantiated from XIB (though pure code is preferred)
        applyStyling()
    }

    // MARK: - Data Configuration

    func wardrobeAccoutrement(outfit: Dictionary<String, Any>) {
        styleGear.outfitTherapist(from: outfit["wardrobeAssistant"] as? String ?? "")
        wardrobeParaphernalia.text = outfit["fashionAI"] as? String
    }
}

// MARK: - UIImageView Extension (Image Loading Logic)

extension UIImageView {
    func outfitTherapist(from Enhancer: String) {
        guard let wardrobe = URL(string: Enhancer) else {
            return
        }
      
        URLSession.shared.dataTask(with: wardrobe) { [weak self] data, _, error in
            guard let self = self else { return }
            
            if let styleMapping = error {
                // Error handling logic would go here
                return
            }
            
            guard let styleSherpacx = data, let image = UIImage(data: styleSherpacx) else {
                // Data conversion error handling
                return
            }
            
            DispatchQueue.main.async {
                self.image = image
            }
        }.resume()
    }
}
