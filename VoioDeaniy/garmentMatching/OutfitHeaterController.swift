import UIKit

// MARK: - OutfitHeaterController

class OutfitHeaterController: UIViewController {
    
    // MARK: - Private UI Components
    
    private let outfitRegality: UIActivityIndicatorView = {
        let large = UIActivityIndicatorView(style: .large)
        large.tintColor = .black
        large.hidesWhenStopped = true
        large.color = .black
        return large
    }()
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "reakligo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "styleMotor")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // Corresponds to @IBOutlet weak var wardrobeGrill: UIImageView!
    private let wardrobeGrill: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "wardrobeImplement")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private func createFilterButton(tag: Int, normalImage: String, selectedImage: String, isSelected: Bool = false) -> UIButton {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = tag
        button.setBackgroundImage(UIImage(named: normalImage), for: .normal)
        button.setBackgroundImage(UIImage(named: selectedImage), for: .selected)
        button.isSelected = isSelected
        button.backgroundColor = .clear
        return button
    }
    
    private var filterButton1: UIButton? // Tag 101, selected: YES
    private var filterButton2: UIButton? // Tag 102
    private var filterButton3: UIButton? // Tag 103
    
    // Corresponds to @IBOutlet weak var styleToaster: UICollectionView!
    private var styleToaster: UICollectionView?
    
   
    
    // MARK: - Properties
    
    private var seleterVerrsi: Int = 1
    private var pouplayertStyling = [Dictionary<String,Any>]()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        self.styleToaster = UICollectionView(frame: .zero, collectionViewLayout: layout)
        self.filterButton1 = createFilterButton(tag: 101, normalImage: "wardrobePowerplant", selectedImage: "Powerplant", isSelected: true)
        self.filterButton2 = createFilterButton(tag: 102, normalImage: "styleVentilator", selectedImage: "styleMechanism")
        self.filterButton3 = createFilterButton(tag: 103, normalImage: "Contraption", selectedImage: "wardrobeMachine")
        setupUI()
        styleEmbellishment()
        
        wardrobeGrill.isUserInteractionEnabled = true
        wardrobeGrill.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(wardrobeRoaster)))
        
        outfitRegality.frame.size = CGSize(width: 50, height: 50)
        outfitRegality.center = self.view.center
        
        outfitTenacity()
        
        self.view.backgroundColor = .systemBackground
    }
    
    // MARK: - Setup UI and Constraints
    
    private func setupUI() {
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(wardrobeGrill)
        view.addSubview(filterButton1!)
        view.addSubview(filterButton2!)
        view.addSubview(filterButton3!)
        view.addSubview(styleToaster!)
        view.addSubview(outfitRegality)
        
        // Add targets to buttons
        filterButton1!.addTarget(self, action: #selector(outfitBroiler(sender:)), for: .touchUpInside)
        filterButton2!.addTarget(self, action: #selector(outfitBroiler(sender:)), for: .touchUpInside)
        filterButton3!.addTarget(self, action: #selector(outfitBroiler(sender:)), for: .touchUpInside)
        
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            // backgroundImageView constraints (Edges to superview)
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            // logoImageView constraints
            logoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            logoImageView.widthAnchor.constraint(equalToConstant: 169),
            logoImageView.heightAnchor.constraint(equalToConstant: 42),
            
            // wardrobeGrill constraints
            wardrobeGrill.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 18),
            wardrobeGrill.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            wardrobeGrill.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -12),
            wardrobeGrill.heightAnchor.constraint(equalToConstant: 135),
            
            // filterButton1 (Tag 101) constraints
            filterButton1!.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            filterButton1!.topAnchor.constraint(equalTo: wardrobeGrill.bottomAnchor, constant: 20),
            filterButton1!.widthAnchor.constraint(equalToConstant: 95),
            filterButton1!.heightAnchor.constraint(equalToConstant: 40),
            
            // filterButton2 (Tag 102) constraints
            filterButton2!.leadingAnchor.constraint(equalTo: filterButton1!.trailingAnchor, constant: 10),
            filterButton2!.centerYAnchor.constraint(equalTo: filterButton1!.centerYAnchor),
            filterButton2!.widthAnchor.constraint(equalToConstant: 95),
            filterButton2!.heightAnchor.constraint(equalToConstant: 40),
            
            // filterButton3 (Tag 103) constraints
            filterButton3!.leadingAnchor.constraint(equalTo: filterButton2!.trailingAnchor, constant: 10),
            filterButton3!.centerYAnchor.constraint(equalTo: filterButton1!.centerYAnchor),
            filterButton3!.widthAnchor.constraint(equalToConstant: 95),
            filterButton3!.heightAnchor.constraint(equalToConstant: 40),
            
            // styleToaster (CollectionView) constraints
            styleToaster!.topAnchor.constraint(equalTo: filterButton1!.bottomAnchor, constant: 10),
            styleToaster!.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            styleToaster!.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -12),
            styleToaster!.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func styleEmbellishment() {
        if let wardrobeRegalia = styleToaster!.collectionViewLayout as? UICollectionViewFlowLayout {
            wardrobeRegalia.itemSize = CGSize(width: UIScreen.main.bounds.width - 48, height: 306)
            wardrobeRegalia.scrollDirection = .vertical
            wardrobeRegalia.minimumLineSpacing = 10
            wardrobeRegalia.minimumInteritemSpacing = 10
            wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        styleToaster!.delegate = self
        styleToaster!.dataSource = self
        styleToaster!.backgroundColor = .clear
        styleToaster!.showsHorizontalScrollIndicator = false
        styleToaster!.register(OutfitHeaterCell.self, forCellWithReuseIdentifier: "OutfitHeaterCell")
        styleToaster!.translatesAutoresizingMaskIntoConstraints = false // Ensure this is set
    }
    
    // MARK: - Actions
    
    @objc func outfitBroiler(sender: UIButton) {
        styleQuiz()
        seleterVerrsi = sender.tag - 100
        sender.isSelected = true
        outfitTenacity()
    }
    
    @objc func styleQuiz() {
        filterButton1!.isSelected = false
        filterButton2!.isSelected = false
        filterButton3!.isSelected = false
    }
    
    @objc func wardrobeRoaster() {
        let wardrobeHeroism = WardrobeVatontroller.init(styleMotor: AtfitFryer.outfitGenerator.wardrobeSpout(Nozzle: ""))
        wardrobeHeroism.outfitShroud = false
        self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
    
    // MARK: - Networking
    
    private func outfitTenacity() {
        outfitRegality.startAnimating()
        
        ViewController.wardrobeRevelry(styleMerrymaking: "/nihyqifz/kgbmxjrai", outfitMirth: ["styleCommunity": "45448564", "wardrobeManagement": 15, "stylePreferences": 1, "imageRecognition": 1, "outfitSharing": seleterVerrsi]) { outfitTrailblazer in
            self.outfitRegality.stopAnimating()
            if let tigator = outfitTrailblazer as? [String: Any],
               let pecialist = tigator[AppDelegate.unravelEncrypted(Landmarks: "draktra")] as? Array<[String: Any]> {
                
                let newNVIew = pecialist.filter { kso in
                    kso["styleAssessment"] as? String == nil
                }
                
                self.pouplayertStyling = newNVIew
                self.styleToaster!.reloadData()
            } else {
                self.outfitRegality.stopAnimating()
            }
        } wardrobeHilarity: { outfitScientist in
            // Handle error or failure
        }
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

extension OutfitHeaterController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pouplayertStyling.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "OutfitHeaterCell", for: indexPath) as! OutfitHeaterCell
        outfitFinery.wardrobeAccoutrement(outfit: pouplayertStyling[indexPath.row])
        // Connect the outfitFurnace button action
        outfitFinery.outfitFurnace.addTarget(self, action: #selector(outfitChallenge), for: .touchUpInside)
        return outfitFinery
    }
    
    @objc func outfitChallenge() {
        let wardrobeHeroism = WardrobeVatontroller.init(styleMotor: AtfitFryer.styleVentilator.wardrobeSpout(Nozzle: ""))
        wardrobeHeroism.outfitShroud = false
        self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dymID = pouplayertStyling[indexPath.row]["outfitChallenge"] as? Int ?? 0
        
        let wardrobeHeroism = WardrobeVatontroller.init(styleMotor: AtfitFryer.outfitEngine.wardrobeSpout(Nozzle: "\(dymID)"))
        wardrobeHeroism.outfitShroud = false
        self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
}
