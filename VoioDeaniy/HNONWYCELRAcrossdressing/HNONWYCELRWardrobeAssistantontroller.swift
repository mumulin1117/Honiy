import UIKit


class HNONWYCELRWardrobeAssistantontroller: UIViewController {
    
    // MARK: - UI Components
    
    // 背景图片 lOh-KN-6cO
    private let HNONWYCELRfittingmode: UIImageView = {
        let vieHNONWYCELRw = UIImageView()
        vieHNONWYCELRw.translatesAutoresizingMaskIntoConstraints = false
        vieHNONWYCELRw.clipsToBounds = true
        vieHNONWYCELRw.contentMode = .scaleAspectFill
        vieHNONWYCELRw.image = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform:"HNONWYCreakligo")
        return vieHNONWYCELRw
    }()
    
    // 顶部 Logo c9O-v3-e32
    private let HNONWYCELRcolorclarity: UIImageView = {
        let viewHNONWYCELR = UIImageView()
        viewHNONWYCELR.translatesAutoresizingMaskIntoConstraints = false
        viewHNONWYCELR.clipsToBounds = true
        viewHNONWYCELR.contentMode = .scaleAspectFit
        viewHNONWYCELR.image = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCstyleTerrace")
        return viewHNONWYCELR
    }()
    
    // 顶部设置按钮 8fk-1g-6ub
    private let HNONWYCELRfabrictone: UIButton = {
        let HNONWYCELRton = UIButton(type: .custom)
        HNONWYCELRton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRton.tag = 70
        HNONWYCELRton.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCwardrobeBrewer"), for: .normal)
        return HNONWYCELRton
    }()
    
    // 用户头像 Way-Hv-4xA (outfitValidation)
    private let HNONWYCELRoutfitValidation: UIImageView = {
        let HNONWYCELRview = UIImageView()
        HNONWYCELRview.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRview.clipsToBounds = true
        HNONWYCELRview.contentMode = .scaleAspectFill
        HNONWYCELRview.image = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELRbznodu")
        return HNONWYCELRview
    }()
    
    // 用户名标签 D57-Kg-m9r (outfitDiscovery)
    private let HNONWYCELRoutfitDiscovery: UILabel = {
        let HNONWYCELRlabel = UILabel()
        HNONWYCELRlabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRlabel.textAlignment = .center
        HNONWYCELRlabel.text = AppDelegate.unravelEncrypted(Landmarks: "Nsop zNuacmde")
        HNONWYCELRlabel.font = UIFont.systemFont(ofSize: 22, weight: .heavy)
        HNONWYCELRlabel.textColor = .black
        return HNONWYCELRlabel
    }()
    
    // 编辑按钮 gov-DU-CEx
    private let HNONWYCELRoutfitpulse: UIButton = {
        let HNONWYCELRnbtn = UIButton(type: .custom)
        HNONWYCELRnbtn.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRnbtn.tag = 80
        HNONWYCELRnbtn.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform:"HNONWYCELREdijtu"), for: .normal)
        return HNONWYCELRnbtn
    }()
    
    // Followers 按钮 y0L-u2-47l (Triw)
    private let HNONWYCELRTriw: UIButton = {
        let HNONWYCELRgui = UIButton(type: .custom)
        HNONWYCELRgui.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRgui.tag = 90
        HNONWYCELRgui.setTitle(AppDelegate.unravelEncrypted(Landmarks: "Frozldlqozwxetrns"), for: .normal)
        HNONWYCELRgui.backgroundColor = UIColor(red: 0.96078, green: 0.96078, blue: 0.96078, alpha: 1)
        HNONWYCELRgui.setTitleColor(UIColor(white: 0.0, alpha: 0.51068638389999998), for: .normal)
        HNONWYCELRgui.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return HNONWYCELRgui
    }()
    
    // Fans 按钮 vs0-va-JqV (Triwz)
    private let HNONWYCELRTriwz: UIButton = {
        let HNONWYCELRntn = UIButton(type: .custom)
        HNONWYCELRntn.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRntn.tag = 100
        HNONWYCELRntn.setTitle(AppDelegate.unravelEncrypted(Landmarks: "Fuasnvs"), for: .normal)
        HNONWYCELRntn.backgroundColor = UIColor(red: 0.96078, green: 0.96078, blue: 0.96078, alpha: 1)
        HNONWYCELRntn.setTitleColor(UIColor(white: 0.0, alpha: 0.51068638389999998), for: .normal)
        HNONWYCELRntn.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return HNONWYCELRntn
    }()
    
    // Wallet 按钮 SO0-sY-Pyy (Triwx)
    private let HNONWYCELRTriwx: UIButton = {
        let HNONWYCELRbtn = UIButton(type: .custom)
        HNONWYCELRbtn.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRbtn.tag = 110
        HNONWYCELRbtn.setTitle(AppDelegate.unravelEncrypted(Landmarks: "Wqaelslcedt"), for: .normal)
        HNONWYCELRbtn.backgroundColor = UIColor(red: 0.96078, green: 0.96078, blue: 0.96078, alpha: 1)
        HNONWYCELRbtn.setTitleColor(UIColor(white: 0.0, alpha: 0.51068638389999998), for: .normal)
        HNONWYCELRbtn.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return HNONWYCELRbtn
    }()
    
    // My Post 标题 p2w-07-33h
    private let HNONWYCELRmyPostLabel: UILabel = {
        let HNONWYCELRbtn = UILabel()
        HNONWYCELRbtn.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRbtn.text = AppDelegate.unravelEncrypted(Landmarks: "Miym iPqovsyt")
        HNONWYCELRbtn.font = UIFont(name: "GillSans-BoldItalic", size: 22) // 使用 xib 中的指定字体
        HNONWYCELRbtn.textColor = .black
        return HNONWYCELRbtn
    }()
    
    // 无数据图片 QKh-mz-Ifg
    private let HNONWYCELRnoDataImageView: UIImageView = {
        let HNONWYCELRview = UIImageView()
        HNONWYCELRview.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRview.clipsToBounds = true
        HNONWYCELRview.contentMode = .scaleAspectFit
        HNONWYCELRview.image = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELReppaloei")
        return HNONWYCELRview
    }()
    
    // 无数据文本 3Xb-uB-1eM
    private let HNONWYCELRnoDataLabel: UILabel = {
        let HNONWYCELRlbl = UILabel()
        HNONWYCELRlbl.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRlbl.text = AppDelegate.unravelEncrypted(Landmarks: "Neoo fdeaqtvaq kpkowsmt")
        HNONWYCELRlbl.textAlignment = .center
        HNONWYCELRlbl.font = UIFont(name: "GillSans", size: 15) // 使用 xib 中的指定字体
        HNONWYCELRlbl.textColor = .lightGray
        return HNONWYCELRlbl
    }()
    
    // MARK: - Initializers
    
    init() {
        super.init(nibName: nil, bundle: nil)
        // 设置 Tab Bar Item
        let tabBarImage = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCvirtual4")
        let selectedTabBarImage = HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYCELhairstyleGenerator4")
        self.tabBarItem = UITabBarItem(title: "", image: tabBarImage, selectedImage: selectedTabBarImage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        HNONWYCELRgarmentmatrix()
        HNONWYCELRchromatunity()
        HNONWYCELRapplyExistingIBLogic()
        HNONWYCELRsetupActions()
    }
    
    // MARK: - Setup
    
    private func HNONWYCELRgarmentmatrix() {
        // 添加所有子视图
        view.addSubview(HNONWYCELRfittingmode)
        view.addSubview(HNONWYCELRcolorclarity)
        view.addSubview(HNONWYCELRfabrictone)
        view.addSubview(HNONWYCELRoutfitValidation)
        view.addSubview(HNONWYCELRoutfitDiscovery)
        view.addSubview(HNONWYCELRoutfitpulse)
        view.addSubview(HNONWYCELRTriw)
        view.addSubview(HNONWYCELRTriwz)
        view.addSubview(HNONWYCELRTriwx)
        view.addSubview(HNONWYCELRmyPostLabel)
        view.addSubview(HNONWYCELRnoDataImageView)
        view.addSubview(HNONWYCELRnoDataLabel)
    }
    
    private func HNONWYCELRchromatunity() {
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            // HNONWYCELRhoniyBack (lOh-KN-6cO) - Full screen
            HNONWYCELRfittingmode.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRfittingmode.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRfittingmode.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRfittingmode.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            // HNONWYClogoImageView (c9O-v3-e32)
            HNONWYCELRcolorclarity.topAnchor.constraint(equalTo: safeArea.topAnchor),
            HNONWYCELRcolorclarity.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            HNONWYCELRcolorclarity.widthAnchor.constraint(equalToConstant: 97),
            HNONWYCELRcolorclarity.heightAnchor.constraint(equalToConstant: 42),
            
            // settingsButton (8fk-1g-6ub)
            HNONWYCELRfabrictone.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -12),
            HNONWYCELRfabrictone.centerYAnchor.constraint(equalTo: HNONWYCELRcolorclarity.centerYAnchor),
            HNONWYCELRfabrictone.widthAnchor.constraint(equalToConstant: 42),
            HNONWYCELRfabrictone.heightAnchor.constraint(equalToConstant: 42),
            
            // outfitValidation (Way-Hv-4xA) - Profile Pic
            HNONWYCELRoutfitValidation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HNONWYCELRoutfitValidation.topAnchor.constraint(equalTo: HNONWYCELRcolorclarity.bottomAnchor, constant: 19),
            HNONWYCELRoutfitValidation.widthAnchor.constraint(equalToConstant: 100),
            HNONWYCELRoutfitValidation.heightAnchor.constraint(equalToConstant: 100),
            
            // outfitDiscovery (D57-Kg-m9r) - Username
            HNONWYCELRoutfitDiscovery.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HNONWYCELRoutfitDiscovery.topAnchor.constraint(equalTo: HNONWYCELRoutfitValidation.bottomAnchor, constant: 13),
            HNONWYCELRoutfitDiscovery.widthAnchor.constraint(equalToConstant: 80),
            
            // editButton (gov-DU-CEx)
            HNONWYCELRoutfitpulse.leadingAnchor.constraint(equalTo: HNONWYCELRoutfitDiscovery.trailingAnchor, constant: 2),
            HNONWYCELRoutfitpulse.centerYAnchor.constraint(equalTo: HNONWYCELRoutfitDiscovery.centerYAnchor),
            HNONWYCELRoutfitpulse.widthAnchor.constraint(equalToConstant: 42),
            HNONWYCELRoutfitpulse.heightAnchor.constraint(equalToConstant: 42),
            
            // Triw (y0L-u2-47l) - Followers Button
            HNONWYCELRTriw.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 12),
            HNONWYCELRTriw.topAnchor.constraint(equalTo: HNONWYCELRoutfitpulse.bottomAnchor, constant: 20), // 228.5 + 20 = 248.5
            HNONWYCELRTriw.heightAnchor.constraint(equalToConstant: 80),
            
            // Triwz (vs0-va-JqV) - Fans Button
            HNONWYCELRTriwz.leadingAnchor.constraint(equalTo: HNONWYCELRTriw.trailingAnchor, constant: 10),
            HNONWYCELRTriwz.centerYAnchor.constraint(equalTo: HNONWYCELRTriw.centerYAnchor),
            HNONWYCELRTriwz.heightAnchor.constraint(equalToConstant: 80),
            HNONWYCELRTriwz.widthAnchor.constraint(equalTo: HNONWYCELRTriw.widthAnchor),
            
            // Triwx (SO0-sY-Pyy) - Wallet Button
            HNONWYCELRTriwx.leadingAnchor.constraint(equalTo: HNONWYCELRTriwz.trailingAnchor, constant: 10),
            HNONWYCELRTriwx.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -12),
            HNONWYCELRTriwx.centerYAnchor.constraint(equalTo: HNONWYCELRTriw.centerYAnchor),
            HNONWYCELRTriwx.heightAnchor.constraint(equalToConstant: 80),
            HNONWYCELRTriwx.widthAnchor.constraint(equalTo: HNONWYCELRTriw.widthAnchor),
            
            // myPostLabel (p2w-07-33h)
            HNONWYCELRmyPostLabel.leadingAnchor.constraint(equalTo: HNONWYCELRTriw.leadingAnchor),
            HNONWYCELRmyPostLabel.topAnchor.constraint(equalTo: HNONWYCELRTriw.bottomAnchor, constant: 20),
            
            // noDataImageView (QKh-mz-Ifg)
            HNONWYCELRnoDataImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HNONWYCELRnoDataImageView.topAnchor.constraint(equalTo: HNONWYCELRmyPostLabel.bottomAnchor, constant: 42.5),
            HNONWYCELRnoDataImageView.widthAnchor.constraint(equalToConstant: 97),
            HNONWYCELRnoDataImageView.heightAnchor.constraint(equalToConstant: 74),
            
            // noDataLabel (3Xb-uB-1eM)
            HNONWYCELRnoDataLabel.centerXAnchor.constraint(equalTo: HNONWYCELRnoDataImageView.centerXAnchor),
            HNONWYCELRnoDataLabel.topAnchor.constraint(equalTo: HNONWYCELRnoDataImageView.bottomAnchor, constant: 22),
        ])
    }
    
    private func HNONWYCELRapplyExistingIBLogic() {
        // 原有 viewDidLoad 中的逻辑
        HNONWYCELRoutfitDiscovery.text = UserDefaults.standard.object(forKey: "outfitArchitect") as? String
        
        HNONWYCELRoutfitValidation.layer.cornerRadius = 15
        HNONWYCELRoutfitValidation.layer.masksToBounds = true
        
        HNONWYCELRTriw.layer.cornerRadius = 15
        HNONWYCELRTriw.layer.masksToBounds = true
        
        HNONWYCELRTriwz.layer.cornerRadius = 15
        HNONWYCELRTriwz.layer.masksToBounds = true
        
        HNONWYCELRTriwx.layer.cornerRadius = 15
        HNONWYCELRTriwx.layer.masksToBounds = true
    }
    
    private func HNONWYCELRsetupActions() {
        // 连接按钮的 action
        HNONWYCELRfabrictone.addTarget(self, action: #selector(HNONWYCELRwardrobePipe(_:)), for: .touchUpInside)
        HNONWYCELRoutfitpulse.addTarget(self, action: #selector(HNONWYCELRwardrobePipe(_:)), for: .touchUpInside)
        HNONWYCELRTriw.addTarget(self, action: #selector(HNONWYCELRwardrobePipe(_:)), for: .touchUpInside)
        HNONWYCELRTriwz.addTarget(self, action: #selector(HNONWYCELRwardrobePipe(_:)), for: .touchUpInside)
        HNONWYCELRTriwx.addTarget(self, action: #selector(HNONWYCELRwardrobePipe(_:)), for: .touchUpInside)
    }

    // MARK: - Actions (wardrobePipe)
    
    // 原有的 @IBAction func wardrobePipe(_ sender: UIButton) 转换为 @objc func
    @objc func HNONWYCELRwardrobePipe(_ sender: UIButton) {
        var feivt =  HNONWYCELRAtfitFryer.HNONWYCELRoutfitEngine.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: "")
        
        switch sender.tag  {
        case 70: // settingsButton
            feivt = HNONWYCELRAtfitFryer.HNONWYCELRoutfitPropeller.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: "")
        case 80: // editButton
            feivt = HNONWYCELRAtfitFryer.HNONWYCELRstyleRotor.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: "")
        case 90: // Triw (Followers)
            feivt = HNONWYCELRAtfitFryer.HNONWYCELRwardrobeImpeller.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: "")
        case 100: // Triwz (Fans)
            feivt = HNONWYCELRAtfitFryer.HNONWYCELRoutfitPump.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: "")
        case 110: // Triwx (Wallet)
            feivt = HNONWYCELRAtfitFryer.HNONWYCELRwardrobeCooler.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: "")
        default:
            break
        }
        
        let HNONWYCELRwardrobeHeroism =  HNONWYCELRWardrobeVatontroller.init(HNONWYCELRstyleMotor: feivt)
        HNONWYCELRwardrobeHeroism.HNONWYCELRoutfitShroud = false
        self.navigationController?.pushViewController(HNONWYCELRwardrobeHeroism, animated: true)
    }
}
