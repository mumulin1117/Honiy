import UIKit


class WardrobeAssistantontroller: UIViewController {
    
    // MARK: - UI Components
    
    // 背景图片 lOh-KN-6cO
    private let backgroundImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "reakligo")
        return view
    }()
    
    // 顶部 Logo c9O-v3-e32
    private let logoImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "styleTerrace")
        return view
    }()
    
    // 顶部设置按钮 8fk-1g-6ub
    private let settingsButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 70
        button.setImage(UIImage(named: "wardrobeBrewer"), for: .normal)
        return button
    }()
    
    // 用户头像 Way-Hv-4xA (outfitValidation)
    private let outfitValidation: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "bznodu")
        return view
    }()
    
    // 用户名标签 D57-Kg-m9r (outfitDiscovery)
    private let outfitDiscovery: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "NO Name"
        label.font = UIFont.systemFont(ofSize: 22, weight: .heavy)
        label.textColor = .black
        return label
    }()
    
    // 编辑按钮 gov-DU-CEx
    private let editButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 80
        button.setImage(UIImage(named: "Edijtu"), for: .normal)
        return button
    }()
    
    // Followers 按钮 y0L-u2-47l (Triw)
    private let Triw: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 90
        button.setTitle("Followers", for: .normal)
        button.backgroundColor = UIColor(red: 0.96078, green: 0.96078, blue: 0.96078, alpha: 1)
        button.setTitleColor(UIColor(white: 0.0, alpha: 0.51068638389999998), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return button
    }()
    
    // Fans 按钮 vs0-va-JqV (Triwz)
    private let Triwz: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 100
        button.setTitle("Fans", for: .normal)
        button.backgroundColor = UIColor(red: 0.96078, green: 0.96078, blue: 0.96078, alpha: 1)
        button.setTitleColor(UIColor(white: 0.0, alpha: 0.51068638389999998), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return button
    }()
    
    // Wallet 按钮 SO0-sY-Pyy (Triwx)
    private let Triwx: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 110
        button.setTitle("Wallet", for: .normal)
        button.backgroundColor = UIColor(red: 0.96078, green: 0.96078, blue: 0.96078, alpha: 1)
        button.setTitleColor(UIColor(white: 0.0, alpha: 0.51068638389999998), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return button
    }()
    
    // My Post 标题 p2w-07-33h
    private let myPostLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "My Post"
        label.font = UIFont(name: "GillSans-BoldItalic", size: 22) // 使用 xib 中的指定字体
        label.textColor = .black
        return label
    }()
    
    // 无数据图片 QKh-mz-Ifg
    private let noDataImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "eppaloei")
        return view
    }()
    
    // 无数据文本 3Xb-uB-1eM
    private let noDataLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "No data post"
        label.textAlignment = .center
        label.font = UIFont(name: "GillSans", size: 15) // 使用 xib 中的指定字体
        label.textColor = .lightGray
        return label
    }()
    
    // MARK: - Initializers
    
    init() {
        super.init(nibName: nil, bundle: nil)
        // 设置 Tab Bar Item
        let tabBarImage = UIImage(named: "virtual4")
        let selectedTabBarImage = UIImage(named: "hairstyleGenerator4")
        self.tabBarItem = UITabBarItem(title: "", image: tabBarImage, selectedImage: selectedTabBarImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setupUI()
        setupConstraints()
        applyExistingIBLogic()
        setupActions()
    }
    
    // MARK: - Setup
    
    private func setupUI() {
        // 添加所有子视图
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(settingsButton)
        view.addSubview(outfitValidation)
        view.addSubview(outfitDiscovery)
        view.addSubview(editButton)
        view.addSubview(Triw)
        view.addSubview(Triwz)
        view.addSubview(Triwx)
        view.addSubview(myPostLabel)
        view.addSubview(noDataImageView)
        view.addSubview(noDataLabel)
    }
    
    private func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            // backgroundImageView (lOh-KN-6cO) - Full screen
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            // logoImageView (c9O-v3-e32)
            logoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            logoImageView.widthAnchor.constraint(equalToConstant: 97),
            logoImageView.heightAnchor.constraint(equalToConstant: 42),
            
            // settingsButton (8fk-1g-6ub)
            settingsButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -12),
            settingsButton.centerYAnchor.constraint(equalTo: logoImageView.centerYAnchor),
            settingsButton.widthAnchor.constraint(equalToConstant: 42),
            settingsButton.heightAnchor.constraint(equalToConstant: 42),
            
            // outfitValidation (Way-Hv-4xA) - Profile Pic
            outfitValidation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            outfitValidation.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 19),
            outfitValidation.widthAnchor.constraint(equalToConstant: 100),
            outfitValidation.heightAnchor.constraint(equalToConstant: 100),
            
            // outfitDiscovery (D57-Kg-m9r) - Username
            outfitDiscovery.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            outfitDiscovery.topAnchor.constraint(equalTo: outfitValidation.bottomAnchor, constant: 13),
            outfitDiscovery.widthAnchor.constraint(equalToConstant: 80),
            
            // editButton (gov-DU-CEx)
            editButton.leadingAnchor.constraint(equalTo: outfitDiscovery.trailingAnchor, constant: 2),
            editButton.centerYAnchor.constraint(equalTo: outfitDiscovery.centerYAnchor),
            editButton.widthAnchor.constraint(equalToConstant: 42),
            editButton.heightAnchor.constraint(equalToConstant: 42),
            
            // Triw (y0L-u2-47l) - Followers Button
            Triw.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            Triw.topAnchor.constraint(equalTo: editButton.bottomAnchor, constant: 20), // 228.5 + 20 = 248.5
            Triw.heightAnchor.constraint(equalToConstant: 80),
            
            // Triwz (vs0-va-JqV) - Fans Button
            Triwz.leadingAnchor.constraint(equalTo: Triw.trailingAnchor, constant: 10),
            Triwz.centerYAnchor.constraint(equalTo: Triw.centerYAnchor),
            Triwz.heightAnchor.constraint(equalToConstant: 80),
            Triwz.widthAnchor.constraint(equalTo: Triw.widthAnchor),
            
            // Triwx (SO0-sY-Pyy) - Wallet Button
            Triwx.leadingAnchor.constraint(equalTo: Triwz.trailingAnchor, constant: 10),
            Triwx.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -12),
            Triwx.centerYAnchor.constraint(equalTo: Triw.centerYAnchor),
            Triwx.heightAnchor.constraint(equalToConstant: 80),
            Triwx.widthAnchor.constraint(equalTo: Triw.widthAnchor),
            
            // myPostLabel (p2w-07-33h)
            myPostLabel.leadingAnchor.constraint(equalTo: Triw.leadingAnchor),
            myPostLabel.topAnchor.constraint(equalTo: Triw.bottomAnchor, constant: 20),
            
            // noDataImageView (QKh-mz-Ifg)
            noDataImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            noDataImageView.topAnchor.constraint(equalTo: myPostLabel.bottomAnchor, constant: 42.5),
            noDataImageView.widthAnchor.constraint(equalToConstant: 97),
            noDataImageView.heightAnchor.constraint(equalToConstant: 74),
            
            // noDataLabel (3Xb-uB-1eM)
            noDataLabel.centerXAnchor.constraint(equalTo: noDataImageView.centerXAnchor),
            noDataLabel.topAnchor.constraint(equalTo: noDataImageView.bottomAnchor, constant: 22),
        ])
    }
    
    private func applyExistingIBLogic() {
        // 原有 viewDidLoad 中的逻辑
        outfitDiscovery.text = UserDefaults.standard.object(forKey: "outfitArchitect") as? String
        
        outfitValidation.layer.cornerRadius = 15
        outfitValidation.layer.masksToBounds = true
        
        Triw.layer.cornerRadius = 15
        Triw.layer.masksToBounds = true
        
        Triwz.layer.cornerRadius = 15
        Triwz.layer.masksToBounds = true
        
        Triwx.layer.cornerRadius = 15
        Triwx.layer.masksToBounds = true
    }
    
    private func setupActions() {
        // 连接按钮的 action
        settingsButton.addTarget(self, action: #selector(wardrobePipe(_:)), for: .touchUpInside)
        editButton.addTarget(self, action: #selector(wardrobePipe(_:)), for: .touchUpInside)
        Triw.addTarget(self, action: #selector(wardrobePipe(_:)), for: .touchUpInside)
        Triwz.addTarget(self, action: #selector(wardrobePipe(_:)), for: .touchUpInside)
        Triwx.addTarget(self, action: #selector(wardrobePipe(_:)), for: .touchUpInside)
    }

    // MARK: - Actions (wardrobePipe)
    
    // 原有的 @IBAction func wardrobePipe(_ sender: UIButton) 转换为 @objc func
    @objc func wardrobePipe(_ sender: UIButton) {
        var feivt =  AtfitFryer.outfitEngine.wardrobeSpout(Nozzle: "")
        
        switch sender.tag  {
        case 70: // settingsButton
            feivt = AtfitFryer.outfitPropeller.wardrobeSpout(Nozzle: "")
        case 80: // editButton
            feivt = AtfitFryer.styleRotor.wardrobeSpout(Nozzle: "")
        case 90: // Triw (Followers)
            feivt = AtfitFryer.wardrobeImpeller.wardrobeSpout(Nozzle: "")
        case 100: // Triwz (Fans)
            feivt = AtfitFryer.outfitPump.wardrobeSpout(Nozzle: "")
        case 110: // Triwx (Wallet)
            feivt = AtfitFryer.wardrobeCooler.wardrobeSpout(Nozzle: "")
        default:
            break
        }
        
        let wardrobeHeroism =  WardrobeVatontroller.init(styleMotor: feivt)
        wardrobeHeroism.outfitShroud = false
        self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
}
