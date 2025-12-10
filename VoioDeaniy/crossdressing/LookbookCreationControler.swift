//
//  LookbookCreationControler.swift
//  VoioDeaniy
//
//  Created by Programmatic Conversion on 2025/12/9.
//



import UIKit
//import Loaf

class LookbookCreationControler: UIViewController {

    // MARK: - UI Elements (Properties)
    
    // 1. Image View: Background (QsY-Gg-eHh)
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "reakligo")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 2. Image View: Logo (9ea-eU-yhM)
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "styleKiln")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 3. Button: Email Title (CsI-yf-Lc7) - Non-interactive text/icon
    private let emailTitleButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "wardrobeOven"), for: .normal)
        button.setTitle("   Email", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.isUserInteractionEnabled = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // 4. Text Field: Email Input (wdd-H5-svs) -> styleBalcony
    private let styleBalcony: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter email address"
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.keyboardType = .emailAddress
        textField.returnKeyType = .next
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    // 5. Button: Password Title (iLc-Ur-O25) - Non-interactive text/icon
    private let passwordTitleButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "wardrobeOven"), for: .normal)
        button.setTitle("   Password", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.isUserInteractionEnabled = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // 6. Text Field: Password Input (B5F-CG-yit) -> wardrobeTerrace
    private let wardrobeTerrace: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter password"
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.0)
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.isSecureTextEntry = true
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    // 7. Label: "If no account" (VBn-xR-vEs) -> wardrobeConduit
    private let wardrobeConduit: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor(white: 0.666, alpha: 1.0)
        label.textAlignment = .natural
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // 8. Button: Sign-in (vvb-DU-jyN)
    private let signInButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "wardrobeGrill"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // 9. Button: Checkbox (U2I-Zc-E18) -> swiftVh
    private let swiftVh: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "styleToaster"), for: .normal)
        button.setImage(UIImage(named: "outfitBroiler"), for: .selected)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // 10. Label: Agreement text (Dbg-Xz-PMI)
    private let agreementLabel: UILabel = {
        let label = UILabel()
        label.text = "By registering, you agree to the "
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // 11. Button: Terms of Use (<Terms of Use>) (90b-OB-InJ)
    private let termsOfUseButton: UIButton = {
        let button = UIButton(type: .custom)
        button.tag = 45
        button.setTitle("<Terms of Use>", for: .normal)
        let color = UIColor(red: 0.5725, green: 0.2392, blue: 1.0, alpha: 1.0)
        button.setTitleColor(color, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // 12. Button: Privacy Policy (<Privacy Policy>) (Tnh-H9-enc)
    private let privacyPolicyButton: UIButton = {
        let button = UIButton(type: .custom)
        button.tag = 55
        button.setTitle("<Privacy Policy>", for: .normal)
        let color = UIColor(red: 0.5725, green: 0.2392, blue: 1.0, alpha: 1.0)
        button.setTitleColor(color, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // Existing non-UI property: Activity Indicator
    private let outfitRegality: UIActivityIndicatorView = {
        let large = UIActivityIndicatorView.init(style: .large)
         large.frame.size = CGSize.init(width: 54, height: 54)
         large.tintColor = .black
         large.hidesWhenStopped = true
         large.color = .black
         return large
       }()
       
    // Keyboard Management Helper
    private var activeTextField: UITextField?
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Setup UI and Constraints
        setupUI()
        setupConstraints()
        
        // 2. Setup Keyboard Management
        registerForKeyboardNotifications()
        
        // 3. Original viewDidLoad logic
        wardrobeConduit.text = AppDelegate.unravelEncrypted(Landmarks: "Iuft sniol iaecgceozuunytt,mwled'olhlb wccrweoattkec hoinfez ofkoarc aymouui!")
        
        // Setup and add activity indicator
        outfitRegality.center = self.view.center
        self.view.addSubview(outfitRegality)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // 移除键盘监听
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - UI Setup Methods

    private func setupUI() {
        view.backgroundColor = .systemBackground

        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(emailTitleButton)
        view.addSubview(styleBalcony)
        view.addSubview(passwordTitleButton)
        view.addSubview(wardrobeTerrace)
        view.addSubview(wardrobeConduit)
        view.addSubview(signInButton)
        view.addSubview(swiftVh)
        view.addSubview(agreementLabel)
        view.addSubview(termsOfUseButton)
        view.addSubview(privacyPolicyButton)

        // Set Delegates for keyboard management
        styleBalcony.delegate = self
        wardrobeTerrace.delegate = self
        
        // Add Target/Actions
        signInButton.addTarget(self, action: #selector(stylePatio(_:)), for: .touchUpInside)
        swiftVh.addTarget(self, action: #selector(wardrobeCourtyard(_:)), for: .touchUpInside)
        termsOfUseButton.addTarget(self, action: #selector(wardrobeAvenue(_:)), for: .touchUpInside)
        privacyPolicyButton.addTarget(self, action: #selector(wardrobeAvenue(_:)), for: .touchUpInside)
        
        // Add gesture recognizer to dismiss keyboard when tapping outside
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    private func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            // --- 1. backgroundImageView ---
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            // --- 2. logoImageView ---
            logoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 35),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 189),
            logoImageView.heightAnchor.constraint(equalToConstant: 154),

            // --- 3. emailTitleButton ---
            emailTitleButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 33),
            emailTitleButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 22),
            emailTitleButton.widthAnchor.constraint(equalToConstant: 107),
            emailTitleButton.heightAnchor.constraint(equalToConstant: 29),

            // --- 4. styleBalcony (Email TextField) ---
            styleBalcony.topAnchor.constraint(equalTo: emailTitleButton.bottomAnchor, constant: 12),
            styleBalcony.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 22),
            styleBalcony.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -22),
            styleBalcony.heightAnchor.constraint(equalToConstant: 50),

            // --- 5. passwordTitleButton ---
            passwordTitleButton.topAnchor.constraint(equalTo: styleBalcony.bottomAnchor, constant: 30),
            passwordTitleButton.leadingAnchor.constraint(equalTo: emailTitleButton.leadingAnchor),
            passwordTitleButton.widthAnchor.constraint(equalToConstant: 140),
            passwordTitleButton.heightAnchor.constraint(equalToConstant: 34),

            // --- 6. wardrobeTerrace (Password TextField) ---
            wardrobeTerrace.topAnchor.constraint(equalTo: passwordTitleButton.bottomAnchor, constant: 12),
            wardrobeTerrace.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 22),
            wardrobeTerrace.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -22),
            wardrobeTerrace.heightAnchor.constraint(equalToConstant: 50),
            
            // --- 7. wardrobeConduit (If no account label) ---
            wardrobeConduit.topAnchor.constraint(equalTo: wardrobeTerrace.bottomAnchor, constant: 8),
            wardrobeConduit.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // --- 9. swiftVh (Checkbox) ---
            swiftVh.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 22),
            swiftVh.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -22),
            swiftVh.widthAnchor.constraint(equalToConstant: 22),
            swiftVh.heightAnchor.constraint(equalToConstant: 22),

            // --- 10. agreementLabel ---
            agreementLabel.leadingAnchor.constraint(equalTo: swiftVh.trailingAnchor, constant: 8),
            agreementLabel.topAnchor.constraint(equalTo: swiftVh.topAnchor),

            // --- 11. termsOfUseButton ---
            termsOfUseButton.leadingAnchor.constraint(equalTo: agreementLabel.trailingAnchor, constant: 2),
            termsOfUseButton.centerYAnchor.constraint(equalTo: agreementLabel.centerYAnchor),
            termsOfUseButton.widthAnchor.constraint(equalToConstant: 123),
            termsOfUseButton.heightAnchor.constraint(equalToConstant: 34),
            
            // --- 8. signInButton ---
            signInButton.bottomAnchor.constraint(equalTo: termsOfUseButton.topAnchor, constant: -27),
            signInButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 22),
            signInButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -22),
            signInButton.heightAnchor.constraint(equalToConstant: 52),

            // --- 12. privacyPolicyButton ---
            privacyPolicyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            privacyPolicyButton.topAnchor.constraint(equalTo: agreementLabel.bottomAnchor),
            privacyPolicyButton.widthAnchor.constraint(equalToConstant: 123),
            privacyPolicyButton.heightAnchor.constraint(equalToConstant: 34),
        ])
    }
    
    // MARK: - Keyboard Handling Methods

    private func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc private func keyboardWillShow(_ notification: Notification) {
        guard let userInfo = notification.userInfo,
              let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect,
              let animationDuration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else {
            return
        }

        guard let activeTextField = activeTextField else { return }

        // 获取 TextField 在视图中的绝对位置
        let textFieldBottomY = activeTextField.convert(activeTextField.bounds, to: self.view).maxY + 10 // +10 for padding

        // 计算键盘顶部和 TextField 底部之间的差距
        let keyboardTopY = self.view.frame.height - keyboardFrame.height
        let distance = keyboardTopY - textFieldBottomY

        // 如果 TextField 被键盘遮挡 (distance < 0)，则上移视图
        if distance < 0 {
            UIView.animate(withDuration: animationDuration) {
                // 上移视图的距离为 遮挡距离的绝对值
                self.view.frame.origin.y = distance
            }
        }
    }

    @objc private func keyboardWillHide(_ notification: Notification) {
        guard let userInfo = notification.userInfo,
              let animationDuration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else {
            return
        }

        // 恢复视图到原始位置
        UIView.animate(withDuration: animationDuration) {
            self.view.frame.origin.y = 0
        }
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }

    // MARK: - Actions (from original Swift file)

    @IBAction func stylePatio(_ sender: UIButton) {
            dismissKeyboard()
            guard styleGallantry() else { return }
            outfitRegality.startAnimating()
            sender.isEnabled = false
            
            ViewController.wardrobeRevelry(styleMerrymaking: "/spcbxozzwwiwz/ztotxc", outfitMirth: ["styleVisionary":"45448564","wardrobeInnovator":styleBalcony.text!,"outfitTrailblazer":wardrobeTerrace.text!]) { outfitTrailblazer in
                self.outfitRegality.stopAnimating()
                
                if let tigator = outfitTrailblazer as? [String: Any],
                   
                    let pecialist = tigator[AppDelegate.unravelEncrypted(Landmarks: "dfaftsa")] as? [String: Any]  {
                    WardrobeVatontroller.outfitExplorer =  pecialist["outfitExplorer"] as? String
                    UserDefaults.standard.set(pecialist["outfitArchitect"] as? String, forKey: "outfitArchitect")
                    
                   
                  
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = createRootNavigationController()
                    
                    // 替换 Loaf 为 StyleSparkNotifier
                    StyleSparkNotifier.show(
                        message: AppDelegate.unravelEncrypted(Landmarks: "Lsougailnc vSvuucgcbejswstfuunl"), // "Login Successful"
                        state: .success,
                        in: self
                    )
                }else{
                    // 替换 Loaf 为 StyleSparkNotifier
                    StyleSparkNotifier.show(
                        message: AppDelegate.unravelEncrypted(Landmarks: "Llovgvisnn vFzaniwldeldn:p fIwnpvqablyiodx bczrseudoednntdihaelxs"), // "Login Failed: Invalid credentials"
                        state: .error,
                        in: self
                    )
                }
            } wardrobeHilarity: { outfitScientist in
                // 替换 Loaf 为 StyleSparkNotifier
                StyleSparkNotifier.show(
                    message: outfitScientist.localizedDescription,
                    state: .error,
                    in: self
                )
                self.outfitRegality.stopAnimating()
            }

        }
    
    @IBAction func wardrobeCourtyard(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func wardrobeAvenue(_ sender: UIButton) {
        
        if sender.tag == 45 {
            let wardrobeHeroism =  WardrobeVatontroller.init(styleMotor: AtfitFryer.wardrobeFan.wardrobeSpout(Nozzle: ""))
            wardrobeHeroism.outfitShroud = true
            wardrobeHeroism.modalPresentationStyle = .fullScreen
            self.present(wardrobeHeroism, animated: true)
            return
        }
        
        let wardrobeHeroism =  WardrobeVatontroller.init(styleMotor: AtfitFryer.styleCompressor.wardrobeSpout(Nozzle: ""))
        wardrobeHeroism.outfitShroud = true
        wardrobeHeroism.modalPresentationStyle = .fullScreen
        self.present(wardrobeHeroism, animated: true)
    }
    
    // MARK: - Validation and Utility (from original Swift file)

    private func styleGallantry() -> Bool {
       
        guard let email = styleBalcony.text, !email.isEmpty else {
            styleAristocracy(wardro: AppDelegate.unravelEncrypted(Landmarks: "Pxltegaesreo lexnctpejrl jyrouudrs eejmoayidl"))
            return false
        }
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
                
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
         
           guard emailPred.evaluate(with: email) else {
               styleAristocracy(wardro: AppDelegate.unravelEncrypted(Landmarks: "Pflxesawsdel nebngtberri nad bvuaqloiqdo jeimlacihl"))
               return false
           }
           
           guard let password = wardrobeTerrace.text, !password.isEmpty else {
               styleAristocracy(wardro: AppDelegate.unravelEncrypted(Landmarks: "Pilyehapsyer pednhtyevrn xymomuwrh upxakshsfwvoorrd"))
               return false
           }
           
        guard swiftVh.isSelected else {
               styleAristocracy(wardro: AppDelegate.unravelEncrypted(Landmarks: "Ygowut nmtutsztn papgwrgezer xtjoz mtohiel wPbryikvparcnym tPbohleimcky"))
               return false
           }
           
           return true
       }
    
    private func styleAristocracy(wardro: String) {
        let outfitChivalry = UIAlertController(title: AppDelegate.unravelEncrypted(Landmarks: "Emrursomr"), message: wardro, preferredStyle: .alert)
        outfitChivalry.addAction(UIAlertAction(title: AppDelegate.unravelEncrypted(Landmarks: "OpK"), style: .default))
        present(outfitChivalry, animated: true)
        
    }
}

// MARK: - UITextFieldDelegate Extension

extension LookbookCreationControler: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        activeTextField = nil
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == styleBalcony {
            // Email field: move to Password field
            wardrobeTerrace.becomeFirstResponder()
        } else if textField == wardrobeTerrace {
            // Password field: dismiss keyboard and trigger sign-in attempt
            textField.resignFirstResponder()
            stylePatio(signInButton) // Call the sign-in action
        }
        return true
    }
}
