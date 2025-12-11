//
//  HNONWYCELRLookbookCreationControler.swift
//  VoioDeaniy
//
//  Created by Programmatic Conversion on 2025/12/9.
//



import UIKit
//import Loaf

class HNONWYCELRLookbookCreationControler: UIViewController {

    // MARK: - UI Elements (Properties)
    
    // 1. Image View: Background (QsY-Gg-eHh)
    private let HNONWYCELRhoniyBack: UIImageView = {
        let HNONWYCView = UIImageView()
        HNONWYCView.image = UIImage(named: "HNONWYCreakligo")
        HNONWYCView.contentMode = .scaleAspectFill
        HNONWYCView.clipsToBounds = true
        HNONWYCView.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCView
    }()
    
    // 2. Image View: Logo (9ea-eU-yhM)
    private let HNONWYClogoImageView: UIImageView = {
        let HNONWYCView = UIImageView()
        HNONWYCView.image = UIImage(named: "HNONWYCsstyleKiln")
        HNONWYCView.contentMode = .scaleAspectFit
        HNONWYCView.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCView
    }()
    
    // 3. Button: Email Title (CsI-yf-Lc7) - Non-interactive text/icon
    private let HNONWYCTitleBtnn: UIButton = {
        let HNONWYCbutton = UIButton(type: .custom)
        HNONWYCbutton.setImage(UIImage(named: "HNONWYCwardrobeOven"), for: .normal)
        HNONWYCbutton.setTitle(AppDelegate.unravelEncrypted(Landmarks: " c y gEumxafixl"), for: .normal)
        HNONWYCbutton.setTitleColor(.black, for: .normal)
        HNONWYCbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        HNONWYCbutton.isUserInteractionEnabled = false
        HNONWYCbutton.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCbutton
    }()
    
    // 4. Text Field: Email Input (wdd-H5-svs) -> HNONWYCstyleBalcony
    private let HNONWYCstyleBalcony: UITextField = {
        let HNONWYCtextField = UITextField()
        HNONWYCtextField.placeholder = AppDelegate.unravelEncrypted(Landmarks: "Ennqthekrz fetmzapihlx baodqdhrueksos")
        HNONWYCtextField.borderStyle = .roundedRect
        HNONWYCtextField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        HNONWYCtextField.textColor = .black
        HNONWYCtextField.font = UIFont.systemFont(ofSize: 16)
        HNONWYCtextField.keyboardType = .emailAddress
        HNONWYCtextField.returnKeyType = .next
        HNONWYCtextField.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCtextField
    }()

    // 5. Button: Password Title (iLc-Ur-O25) - Non-interactive text/icon
    private let HNONWYCpaswTitleButton: UIButton = {
        let HNONWYCbutton = UIButton(type: .custom)
        HNONWYCbutton.setImage(UIImage(named: "HNONWYCwardrobeOven"), for: .normal)
        HNONWYCbutton.setTitle(AppDelegate.unravelEncrypted(Landmarks: " j k xPjaisfsdwboyrsd"), for: .normal)
        HNONWYCbutton.setTitleColor(.black, for: .normal)
        HNONWYCbutton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        HNONWYCbutton.isUserInteractionEnabled = false
        HNONWYCbutton.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCbutton
    }()

    // 6. Text Field: Password Input (B5F-CG-yit) -> wardrobeTerrace
    private let HNONWYCwardrobeTerrace: UITextField = {
        let HNONWYCtextField = UITextField()
        HNONWYCtextField.placeholder = AppDelegate.unravelEncrypted(Landmarks: "Ennstmelrs tpaarsasxwkozrvd")
        HNONWYCtextField.borderStyle = .roundedRect
        HNONWYCtextField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        HNONWYCtextField.textColor = .black
        HNONWYCtextField.font = UIFont.systemFont(ofSize: 16)
        HNONWYCtextField.isSecureTextEntry = true
        HNONWYCtextField.returnKeyType = .done
        HNONWYCtextField.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCtextField
    }()
    
    // 7. Label: "If no account" (VBn-xR-vEs) -> wardrobeConduit
    private let HNONWYCwardrobeConduit: UILabel = {
        let HNONWYCbel = UILabel()
        HNONWYCbel.font = UIFont.systemFont(ofSize: 13)
        HNONWYCbel.textColor = UIColor(white: 0.666, alpha: 1.0)
        HNONWYCbel.textAlignment = .natural
        HNONWYCbel.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCbel
    }()
    
    // 8. Button: Sign-in (vvb-DU-jyN)
    private let HNONWYCgoInButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "HNONWYCwardrobeGrill"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // 9. Button: Checkbox (U2I-Zc-E18) -> swiftVh
    private let HNONWYCswiftVh: UIButton = {
        let HNONWYCbutton = UIButton(type: .custom)
        HNONWYCbutton.setImage(UIImage(named: "HNONWYCstyleToaster"), for: .normal)
        HNONWYCbutton.setImage(UIImage(named: "HNONWYCoutfitBroiler"), for: .selected)
        HNONWYCbutton.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCbutton
    }()

    // 10. Label: Agreement text (Dbg-Xz-PMI)
    private let HNONWYCagreemenHNONWYCtLabel: UILabel = {
        let HNONWYClabel = UILabel()
        HNONWYClabel.text = AppDelegate.unravelEncrypted(Landmarks: "Bkyk qrsergwipsytneyrvignkgr,c xykouuk jamgkryemef xtmoc mtohven ")
        HNONWYClabel.font = UIFont.systemFont(ofSize: 13)
        HNONWYClabel.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYClabel
    }()
    
    // 11. Button: Terms of Use (<Terms of Use>) (90b-OB-InJ)
    private let HNONWYCtermsOfUseButton: UIButton = {
        let HNONWYCbutton = UIButton(type: .custom)
        HNONWYCbutton.tag = 45
        HNONWYCbutton.setTitle(AppDelegate.unravelEncrypted(Landmarks: "<eThexrgmvsn horfj aUtsfen>"), for: .normal)
        let color = UIColor(red: 0.5725, green: 0.2392, blue: 1.0, alpha: 1.0)
        HNONWYCbutton.setTitleColor(color, for: .normal)
        HNONWYCbutton.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        HNONWYCbutton.translatesAutoresizingMaskIntoConstraints = false
        return HNONWYCbutton
    }()
    
    // 12. Button: Privacy Policy (<Privacy Policy>) (Tnh-H9-enc)
    private let HNONWYCprivacyPolicyButton: UIButton = {
        let buttonHNONWYC = UIButton(type: .custom)
        buttonHNONWYC.tag = 55
        buttonHNONWYC.setTitle(AppDelegate.unravelEncrypted(Landmarks: "<xPbrnijvtaxclye qPioulxilcpye>"), for: .normal)
        let color = UIColor(red: 0.5725, green: 0.2392, blue: 1.0, alpha: 1.0)
        buttonHNONWYC.setTitleColor(color, for: .normal)
        buttonHNONWYC.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        buttonHNONWYC.translatesAutoresizingMaskIntoConstraints = false
        return buttonHNONWYC
    }()

    // Existing non-UI property: Activity Indicator
    private let HNONWYCoutfitRegality: UIActivityIndicatorView = {
        let HNONWYClarge = UIActivityIndicatorView.init(style: .large)
         HNONWYClarge.frame.size = CGSize.init(width: 54, height: 54)
         HNONWYClarge.tintColor = .black
         HNONWYClarge.hidesWhenStopped = true
         HNONWYClarge.color = .black
         return HNONWYClarge
       }()
       
    // Keyboard Management Helper
    private var HNONWYCactiveTextField: UITextField?
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Setup UI and Constraints
        HNONWYCsetupUI()
        HNONWYCsetupHNONWYCConstraints()
        
        // 2. Setup Keyboard Management
        HNONWYCForKeyboardHNONWYCNotifications()
        
        // 3. Original viewDidLoad logic
        HNONWYCwardrobeConduit.text = AppDelegate.unravelEncrypted(Landmarks: "Iuft sniol iaecgceozuunytt,mwled'olhlb wccrweoattkec hoinfez ofkoarc aymouui!")
        
        // Setup and add activity indicator
        HNONWYCoutfitRegality.center = self.view.center
        self.view.addSubview(HNONWYCoutfitRegality)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // 移除键盘监听
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - UI Setup Methods

    private func HNONWYCsetupUI() {
        view.backgroundColor = .systemBackground

        view.addSubview(HNONWYCELRhoniyBack)
        view.addSubview(HNONWYClogoImageView)
        view.addSubview(HNONWYCTitleBtnn)
        view.addSubview(HNONWYCstyleBalcony)
        view.addSubview(HNONWYCpaswTitleButton)
        view.addSubview(HNONWYCwardrobeTerrace)
        view.addSubview(HNONWYCwardrobeConduit)
        view.addSubview(HNONWYCgoInButton)
        view.addSubview(HNONWYCswiftVh)
        view.addSubview(HNONWYCagreemenHNONWYCtLabel)
        view.addSubview(HNONWYCtermsOfUseButton)
        view.addSubview(HNONWYCprivacyPolicyButton)

        // Set Delegates for keyboard management
        HNONWYCstyleBalcony.delegate = self
        HNONWYCwardrobeTerrace.delegate = self
        
        // Add Target/Actions
        HNONWYCgoInButton.addTarget(self, action: #selector(HNONWYCstyleHNONWYCPatio(_:)), for: .touchUpInside)
        HNONWYCswiftVh.addTarget(self, action: #selector(HNONWYCELRwardrobeCourtyard(_:)), for: .touchUpInside)
        HNONWYCtermsOfUseButton.addTarget(self, action: #selector(HNONWYCELRwardrobeHNONWYCELRAvenue(_:)), for: .touchUpInside)
        HNONWYCprivacyPolicyButton.addTarget(self, action: #selector(HNONWYCELRwardrobeHNONWYCELRAvenue(_:)), for: .touchUpInside)
        
        // Add gesture recognizer to dismiss keyboard when tapping outside
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(HNONWYCdismissHNONWYCKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    private func HNONWYCsetupHNONWYCConstraints() {
        let HNONWYCsafeArea = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            // --- 1. HNONWYCELRhoniyBack ---
            HNONWYCELRhoniyBack.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRhoniyBack.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRhoniyBack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyBack.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            // --- 2. HNONWYClogoImageView ---
            HNONWYClogoImageView.topAnchor.constraint(equalTo: HNONWYCsafeArea.topAnchor, constant: 35),
            HNONWYClogoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HNONWYClogoImageView.widthAnchor.constraint(equalToConstant: 189),
            HNONWYClogoImageView.heightAnchor.constraint(equalToConstant: 154),

            // --- 3. HNONWYCTitleBtnn ---
            HNONWYCTitleBtnn.topAnchor.constraint(equalTo: HNONWYClogoImageView.bottomAnchor, constant: 33),
            HNONWYCTitleBtnn.leadingAnchor.constraint(equalTo: HNONWYCsafeArea.leadingAnchor, constant: 22),
            HNONWYCTitleBtnn.widthAnchor.constraint(equalToConstant: 107),
            HNONWYCTitleBtnn.heightAnchor.constraint(equalToConstant: 29),

            // --- 4. HNONWYCstyleBalcony (Email TextField) ---
            HNONWYCstyleBalcony.topAnchor.constraint(equalTo: HNONWYCTitleBtnn.bottomAnchor, constant: 12),
            HNONWYCstyleBalcony.leadingAnchor.constraint(equalTo: HNONWYCsafeArea.leadingAnchor, constant: 22),
            HNONWYCstyleBalcony.trailingAnchor.constraint(equalTo: HNONWYCsafeArea.trailingAnchor, constant: -22),
            HNONWYCstyleBalcony.heightAnchor.constraint(equalToConstant: 50),

            // --- 5. passwordTitleButton ---
            HNONWYCpaswTitleButton.topAnchor.constraint(equalTo: HNONWYCstyleBalcony.bottomAnchor, constant: 30),
            HNONWYCpaswTitleButton.leadingAnchor.constraint(equalTo: HNONWYCTitleBtnn.leadingAnchor),
            HNONWYCpaswTitleButton.widthAnchor.constraint(equalToConstant: 140),
            HNONWYCpaswTitleButton.heightAnchor.constraint(equalToConstant: 34),

            // --- 6. wardrobeTerrace (Password TextField) ---
            HNONWYCwardrobeTerrace.topAnchor.constraint(equalTo: HNONWYCpaswTitleButton.bottomAnchor, constant: 12),
            HNONWYCwardrobeTerrace.leadingAnchor.constraint(equalTo: HNONWYCsafeArea.leadingAnchor, constant: 22),
            HNONWYCwardrobeTerrace.trailingAnchor.constraint(equalTo: HNONWYCsafeArea.trailingAnchor, constant: -22),
            HNONWYCwardrobeTerrace.heightAnchor.constraint(equalToConstant: 50),
            
            // --- 7. wardrobeConduit (If no account label) ---
            HNONWYCwardrobeConduit.topAnchor.constraint(equalTo: HNONWYCwardrobeTerrace.bottomAnchor, constant: 8),
            HNONWYCwardrobeConduit.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // --- 9. swiftVh (Checkbox) ---
            HNONWYCswiftVh.leadingAnchor.constraint(equalTo: HNONWYCsafeArea.leadingAnchor, constant: 22),
            HNONWYCswiftVh.bottomAnchor.constraint(equalTo: HNONWYCsafeArea.bottomAnchor, constant: -22),
            HNONWYCswiftVh.widthAnchor.constraint(equalToConstant: 22),
            HNONWYCswiftVh.heightAnchor.constraint(equalToConstant: 22),

            // --- 10. HNONWYCagreemenHNONWYCtLabel ---
            HNONWYCagreemenHNONWYCtLabel.leadingAnchor.constraint(equalTo: HNONWYCswiftVh.trailingAnchor, constant: 8),
            HNONWYCagreemenHNONWYCtLabel.topAnchor.constraint(equalTo: HNONWYCswiftVh.topAnchor),

            // --- 11. termsOfUseButton ---
            HNONWYCtermsOfUseButton.leadingAnchor.constraint(equalTo: HNONWYCagreemenHNONWYCtLabel.trailingAnchor, constant: 2),
            HNONWYCtermsOfUseButton.centerYAnchor.constraint(equalTo: HNONWYCagreemenHNONWYCtLabel.centerYAnchor),
            HNONWYCtermsOfUseButton.widthAnchor.constraint(equalToConstant: 123),
            HNONWYCtermsOfUseButton.heightAnchor.constraint(equalToConstant: 34),
            
            // --- 8. signInButton ---
            HNONWYCgoInButton.bottomAnchor.constraint(equalTo: HNONWYCtermsOfUseButton.topAnchor, constant: -27),
            HNONWYCgoInButton.leadingAnchor.constraint(equalTo: HNONWYCsafeArea.leadingAnchor, constant: 22),
            HNONWYCgoInButton.trailingAnchor.constraint(equalTo: HNONWYCsafeArea.trailingAnchor, constant: -22),
            HNONWYCgoInButton.heightAnchor.constraint(equalToConstant: 52),

            // --- 12. HNONWYCprivacyPolicyButton ---
            HNONWYCprivacyPolicyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HNONWYCprivacyPolicyButton.topAnchor.constraint(equalTo: HNONWYCagreemenHNONWYCtLabel.bottomAnchor),
            HNONWYCprivacyPolicyButton.widthAnchor.constraint(equalToConstant: 123),
            HNONWYCprivacyPolicyButton.heightAnchor.constraint(equalToConstant: 34),
        ])
    }
    
    // MARK: - Keyboard Handling Methods

    private func HNONWYCForKeyboardHNONWYCNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(HNONWYCkeyboardHNONWYCWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyHNONWYCboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc private func HNONWYCkeyboardHNONWYCWillShow(_ notification: Notification) {
        guard let HNONWYCuserHNONWYCInfo = notification.userInfo,
              let keyboardHNONWYCFrame = HNONWYCuserHNONWYCInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect,
              let animationHNONWYCDuration = HNONWYCuserHNONWYCInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else {
            return
        }

        guard let activeHNONWYCTextField = HNONWYCactiveTextField else { return }

        // 获取 TextField 在视图中的绝对位置
        let textFieldHNONWYCBottomY = activeHNONWYCTextField.convert(activeHNONWYCTextField.bounds, to: self.view).maxY + 10 // +10 for padding

        // 计算键盘顶部和 TextField 底部之间的差距
        let keyboardHNONWYCTopY = self.view.frame.height - keyboardHNONWYCFrame.height
        let HNONWYCdistance = keyboardHNONWYCTopY - textFieldHNONWYCBottomY

        // 如果 TextField 被键盘遮挡 (distance < 0)，则上移视图
        if HNONWYCdistance < 0 {
            UIView.animate(withDuration: animationHNONWYCDuration) {
                // 上移视图的距离为 遮挡距离的绝对值
                self.view.frame.origin.y = HNONWYCdistance
            }
        }
    }

    @objc private func keyHNONWYCboardWillHide(_ notification: Notification) {
        guard let userHNONWYCInfo = notification.userInfo,
              let animationHNONWYCDuration = userHNONWYCInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else {
            return
        }

        // 恢复视图到原始位置
        UIView.animate(withDuration: animationHNONWYCDuration) {
            self.view.frame.origin.y = 0
        }
    }
    
    @objc private func HNONWYCdismissHNONWYCKeyboard() {
        view.endEditing(true)
    }

  @objc func HNONWYCstyleHNONWYCPatio(_ sender: UIButton) {
            HNONWYCdismissHNONWYCKeyboard()
            guard HNONWYCELRstyleHNONWYCELRGallantry() else { return }
            HNONWYCoutfitRegality.startAnimating()
            sender.isEnabled = false
            
            HNONWYCELRLaunchinBeginController.HNONWYCELRwardrobeRevelry(HNONWYCELRstyleMerrymaking: "/spcbxozzwwiwz/ztotxc", HNONWYCELRoutfitMirth: ["styleVisionary":"45448564","wardrobeInnovator":HNONWYCstyleBalcony.text!,"outfitTrailblazer":HNONWYCwardrobeTerrace.text!]) { outfitTrailblazer in
                self.HNONWYCoutfitRegality.stopAnimating()
                
                if let tigator = outfitTrailblazer as? [String: Any],
                   
                    let pecialist = tigator[AppDelegate.unravelEncrypted(Landmarks: "dfaftsa")] as? [String: Any]  {
                    HNONWYCELRWardrobeVatontroller.HNONWYCELRoutfitExplorer =  pecialist["outfitExplorer"] as? String
                    UserDefaults.standard.set(pecialist["outfitArchitect"] as? String, forKey: "outfitArchitect")
                    
                   
                  
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HNONWYCELRRootNavigationController()
                    
                    // 替换 Loaf 为 HNONWYCELRStyleSparkNotifier
                    HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                        HNONWYCELRmessage: AppDelegate.unravelEncrypted(Landmarks: "Lsougailnc vSvuucgcbejswstfuunl"), // "Login Successful"
                        HNONWYCELRstate: .HNONWYCELRsuccess,
                        HNONWYCELRin: self
                    )
                }else{
                    // 替换 Loaf 为 HNONWYCELRStyleSparkNotifier
                    HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                        HNONWYCELRmessage: AppDelegate.unravelEncrypted(Landmarks: "Llovgvisnn vFzaniwldeldn:p fIwnpvqablyiodx bczrseudoednntdihaelxs"), // "Login Failed: Invalid credentials"
                        HNONWYCELRstate: .HNONWYCELRerror,
                        HNONWYCELRin: self
                    )
                }
            } HNONWYCELRwardrobeHilarity: { outfitScientist in
                // 替换 Loaf 为 HNONWYCELRStyleSparkNotifier
                HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                    HNONWYCELRmessage: outfitScientist.localizedDescription,
                    HNONWYCELRstate: .HNONWYCELRerror,
                    HNONWYCELRin: self
                )
                self.HNONWYCoutfitRegality.stopAnimating()
            }

        }

    @objc func HNONWYCELRwardrobeCourtyard(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @objc func HNONWYCELRwardrobeHNONWYCELRAvenue(_ sender: UIButton) {
        
        if sender.tag == 45 {
            let wardrobeHeroism =  HNONWYCELRWardrobeVatontroller.init(HNONWYCELRstyleMotor: HNONWYCELRAtfitFryer.HNONWYCELRwardrobeFan.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: ""))
            wardrobeHeroism.HNONWYCELRoutfitShroud = true
            wardrobeHeroism.modalPresentationStyle = .fullScreen
            self.present(wardrobeHeroism, animated: true)
            return
        }
        
        let wardrobeHeroism =  HNONWYCELRWardrobeVatontroller.init(HNONWYCELRstyleMotor: HNONWYCELRAtfitFryer.HNONWYCELRstyleCompressor.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: ""))
        wardrobeHeroism.HNONWYCELRoutfitShroud = true
        wardrobeHeroism.modalPresentationStyle = .fullScreen
        self.present(wardrobeHeroism, animated: true)
    }
    
    // MARK: - Validation and Utility (from original Swift file)

    private func HNONWYCELRstyleHNONWYCELRGallantry() -> Bool {
       
        guard let HNONWYCELRemail = HNONWYCstyleBalcony.text, !HNONWYCELRemail.isEmpty else {
            styleHNONWYCELRAristocracy(HNONWYCELRwardro: AppDelegate.unravelEncrypted(Landmarks: "Pxltegaesreo lexnctpejrl jyrouudrs eejmoayidl"))
            return false
        }
        let HNONWYCELRemailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
                
        let HNONWYCELRemailPred = NSPredicate(format:"SELF MATCHES %@", HNONWYCELRemailRegEx)
         
           guard HNONWYCELRemailPred.evaluate(with: HNONWYCELRemail) else {
               styleHNONWYCELRAristocracy(HNONWYCELRwardro: AppDelegate.unravelEncrypted(Landmarks: "Pflxesawsdel nebngtberri nad bvuaqloiqdo jeimlacihl"))
               return false
           }
           
           guard let HNONWYCELRword = HNONWYCwardrobeTerrace.text, !HNONWYCELRword.isEmpty else {
               styleHNONWYCELRAristocracy(HNONWYCELRwardro: AppDelegate.unravelEncrypted(Landmarks: "Pilyehapsyer pednhtyevrn xymomuwrh upxakshsfwvoorrd"))
               return false
           }
           
        guard HNONWYCswiftVh.isSelected else {
               styleHNONWYCELRAristocracy(HNONWYCELRwardro: AppDelegate.unravelEncrypted(Landmarks: "Ygowut nmtutsztn papgwrgezer xtjoz mtohiel wPbryikvparcnym tPbohleimcky"))
               return false
           }
           
           return true
       }
    
    private func styleHNONWYCELRAristocracy(HNONWYCELRwardro: String) {
        let outfitHNONWYCELRChivalry = UIAlertController(title: AppDelegate.unravelEncrypted(Landmarks: "Emrursomr"), message: HNONWYCELRwardro, preferredStyle: .alert)
        outfitHNONWYCELRChivalry.addAction(UIAlertAction(title: AppDelegate.unravelEncrypted(Landmarks: "OpK"), style: .default))
        present(outfitHNONWYCELRChivalry, animated: true)
        
    }
}

// MARK: - UITextFieldDelegate Extension

extension HNONWYCELRLookbookCreationControler: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        HNONWYCactiveTextField = textField
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        HNONWYCactiveTextField = nil
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == HNONWYCstyleBalcony {
            // Email field: move to Password field
            HNONWYCwardrobeTerrace.becomeFirstResponder()
        } else if textField == HNONWYCwardrobeTerrace {
            // Password field: dismiss keyboard and trigger sign-in attempt
            textField.resignFirstResponder()
            HNONWYCstyleHNONWYCPatio(HNONWYCgoInButton) // Call the sign-in action
        }
        return true
    }
}
