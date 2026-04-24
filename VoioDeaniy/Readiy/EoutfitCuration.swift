//
//  EoutfitCuration.swift
//  VoioDeaniy
//
//  Created by  on 2026/4/23.
//


import UIKit
import WebKit



public class HNONYtailoringPrecision: NSObject {
    public var APPPREFIX_deviceID: String
    public var APPPREFIX_adjustID: String
    public var APPPREFIX_passwordKey: String
    public init(APPPREFIX_deviceID: String,APPPREFIX_adjustID:String,APPPREFIX_passwordKey:String) {
        self.APPPREFIX_deviceID = APPPREFIX_deviceID
        self.APPPREFIX_adjustID = APPPREFIX_adjustID
        self.APPPREFIX_passwordKey = APPPREFIX_passwordKey
    }
}
// 快速登录
class EoutfitCuration: UIViewController  {
    private let HNONWYCELRoutfitRegality: UIActivityIndicatorView = {
        let HNONWYCELRfabricspectrum = UIActivityIndicatorView(style: .large)
        HNONWYCELRfabricspectrum.tintColor = .black
        HNONWYCELRfabricspectrum.hidesWhenStopped = true
        HNONWYCELRfabricspectrum.color = .black
        return HNONWYCELRfabricspectrum
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APPPREFIX_foreLoadWebContent()
        APPPREFIX_addBackgroundImageView()
        APPPREFIX_addLoginButton()
        APPPREFIX_addSmallImageView()
        HNONWYCELRoutfitRegality.frame.size = CGSize(width: 50, height: 50)
        HNONWYCELRoutfitRegality.center = self.view.center
    }
    
    private func APPPREFIX_addBackgroundImageView()  {
        let APPPREFIX_laungchstr = TgextileLuster.shared.APPPREFIX_mainBackgroundImage
        
        let APPPREFIX_backgroundImage = UIImage(named: APPPREFIX_laungchstr)
        
       
        let APPPREFIX_BbckgroundImageView = UIImageView(image:APPPREFIX_backgroundImage )
        APPPREFIX_BbckgroundImageView.contentMode = .scaleAspectFill
        APPPREFIX_BbckgroundImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(APPPREFIX_BbckgroundImageView)
       
    }
    
    
    private func APPPREFIX_addLoginButton()  {
        let  APPPREFIX_loginButton = UIButton.init()
        let APPPREFIX_laungchstr = TgextileLuster.shared.APPPREFIX_loginButtonBackImage
        
        let APPPREFIX_backgroundImage = UIImage(named: APPPREFIX_laungchstr)
     
        APPPREFIX_loginButton.setBackgroundImage(APPPREFIX_backgroundImage, for: .normal)
        if TgextileLuster.shared.APPPREFIX_loginButtonBackImage == "" {
            APPPREFIX_loginButton.layer.cornerRadius = 10
            APPPREFIX_loginButton.layer.masksToBounds = true
            APPPREFIX_loginButton.backgroundColor = .white
        }
        
        APPPREFIX_loginButton.setTitleColor(TgextileLuster.shared.APPPREFIX_logButtonTextColor, for: .normal)
        APPPREFIX_loginButton.setTitle(HNONWCcasualChic.APPPREFIX_22, for: .normal)
        APPPREFIX_loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        
        
        view.addSubview(APPPREFIX_loginButton)
        APPPREFIX_loginButton.addTarget(self, action: #selector(APPPREFIX_performLoginRequest), for: .touchUpInside)
        APPPREFIX_loginButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            APPPREFIX_loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            APPPREFIX_loginButton.heightAnchor.constraint(equalToConstant: TgextileLuster.shared.APPPREFIX_logButtonHeight),
            APPPREFIX_loginButton.widthAnchor.constraint(equalToConstant: TgextileLuster.shared.APPPREFIX_logButtonWidth),
            APPPREFIX_loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 55)
        ])
       
    }
   
    func APPPREFIX_addSmallImageView() {
        if TgextileLuster.shared.APPPREFIX_smallImage != "" {
            let backgroundImage = UIImage(named:TgextileLuster.shared.APPPREFIX_smallImage)
            let BbckgroundImageView = UIImageView(image:backgroundImage )
            BbckgroundImageView.contentMode = .scaleAspectFill
//            BbckgroundImageView.frame = CGRect(x: 0, y: 0, width: APPPREFIX_SDKConfig.shared.APPPREFIX_smallImageWidth, height: APPPREFIX_SDKConfig.shared.APPPREFIX_smallImageHeight)
//            BbckgroundImageView.center.x = self.view.center.x
//            BbckgroundImageView.frame.origin.y = -self.view.safeAreaInsets.bottom - 55
//
//            BbckgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(BbckgroundImageView)
            NSLayoutConstraint.activate([
                BbckgroundImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                BbckgroundImageView.heightAnchor.constraint(equalToConstant:TgextileLuster.shared.APPPREFIX_smallImageHeight),
                BbckgroundImageView.widthAnchor.constraint(equalToConstant: TgextileLuster.shared.APPPREFIX_smallImageWidth),
                BbckgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 55 - TgextileLuster.shared.APPPREFIX_logButtonHeight - 30)
            ])
            
        }
        
    }
    //预加载
    private func APPPREFIX_foreLoadWebContent()  {
     
        let APPPREFIX_webConfig = WKWebViewConfiguration()
        APPPREFIX_webConfig.allowsAirPlayForMediaPlayback = false
        APPPREFIX_webConfig.allowsInlineMediaPlayback = true
        APPPREFIX_webConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        APPPREFIX_webConfig.mediaTypesRequiringUserActionForPlayback = []
        
       let APPPREFIX_webViewContainer = WKWebView(frame: UIScreen.main.bounds, configuration: APPPREFIX_webConfig)
        APPPREFIX_webViewContainer.isHidden = true
        APPPREFIX_webViewContainer.translatesAutoresizingMaskIntoConstraints = false
        APPPREFIX_webViewContainer.scrollView.alwaysBounceVertical = false
        APPPREFIX_webViewContainer.scrollView.contentInsetAdjustmentBehavior = .never
        
        APPPREFIX_webViewContainer.allowsBackForwardNavigationGestures = true
        view.addSubview(APPPREFIX_webViewContainer)
       
        if let APPPREFIX_openValue = UserDefaults.standard.object(
            forKey: HNONWCcasualChic.APPPREFIX_63
        ) as? String, let url = URL(string: APPPREFIX_openValue) {
            APPPREFIX_webViewContainer.load(URLRequest(url: url))
            
        }
        
        
    }
    
    @objc func APPPREFIX_performLoginRequest() {
        
        HNONWYCELRoutfitRegality.startAnimating()
        var APPPREFIX_loginParams: [String: Any] = [:]
        
        // 设备 ID
        APPPREFIX_loginParams[TgextileLuster.shared.APPPREFIX_loginParamaKey.APPPREFIX_deviceID] = HNONWCEestheticCoordination.APPPREFIX_getEquipmentOnlyID()
       
        // 密码（首次登录才会存在）
        if let APPPREFIX_savedPassword = HNONWCEestheticCoordination.APPPREFIX_getUserloginpassword() {
            APPPREFIX_loginParams[TgextileLuster.shared.APPPREFIX_loginParamaKey.APPPREFIX_passwordKey] = APPPREFIX_savedPassword
        }
        
        // 发起登录
        HNONWCEsilkDrape.shared.APPPREFIX_postRequest(
            TgextileLuster.shared.APPPREFIX_loginPath,
                    APPPREFIX_params: APPPREFIX_loginParams
        ) { result in
            
            self.HNONWYCELRoutfitRegality.stopAnimating()
            
            switch result {
            case .success(let APPPREFIX_response):
                
                guard
                    let APPPREFIX_responseDict = APPPREFIX_response,
                    let APPPREFIX_token = APPPREFIX_responseDict[HNONWCcasualChic.APPPREFIX_15] as? String,
                    let APPPREFIX_openValue = UserDefaults.standard.object(
                        forKey: HNONWCcasualChic.APPPREFIX_63
                    ) as? String
                else {
                    HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                        HNONWYCELRmessage: HNONWCcasualChic.APPPREFIX_23,
                        HNONWYCELRstate: .HNONWYCELRerror,
                        HNONWYCELRin: self
                    )
                   
                    return
                }
                
                // 密码仅第一次登录返回
                if let APPPREFIX_newPassword = APPPREFIX_responseDict[HNONWCcasualChic.APPPREFIX_24] as? String {
                    HNONWCEestheticCoordination.APPPREFIX_savedUserloginpassword(APPPREFIX_newPassword)
                }
                
                // 保存 token
                UserDefaults.standard.set(APPPREFIX_token, forKey: HNONWCcasualChic.APPPREFIX_62)
                
                
                // MARK: - 拼接加密参数
                let APPPREFIX_secureParams: [String: Any] = [
                    HNONWCcasualChic.APPPREFIX_15: APPPREFIX_token,
                    HNONWCcasualChic.APPPREFIX_16: "\(Int(Date().timeIntervalSince1970))"
                ]
                
                guard let APPPREFIX_json = HNONWCEsilkDrape.APPPREFIX_jsonString(APPPREFIX_from: APPPREFIX_secureParams) else {
                    return
                }
                
                print(APPPREFIX_json)
                
                // AES 加密
                guard let APPPREFIX_aes = EcelebrationGarment(),
                      let APPPREFIX_encryptedString = APPPREFIX_aes.APPPREFIX_encrypt(APPPREFIX_json)
                else {
                    return
                }
                
           
                // MARK: - 拼接最终 URL
                let APPPREFIX_finalURL =
                    APPPREFIX_openValue +
                    HNONWCcasualChic.APPPREFIX_17 + APPPREFIX_encryptedString +
                    HNONWCcasualChic.APPPREFIX_18 + "\(TgextileLuster.shared.APPPREFIX_appId)"
                
                print(APPPREFIX_finalURL)
                
                
                // MARK: - 跳到 WebView
                let APPPREFIX_webVC = HNONWCdazzlingPresence(
                    APPPREFIX_urlString: APPPREFIX_finalURL,
                    APPPREFIX_quickLoginEnabled: true
                )
                APPPREFIX_AppLaunchController.APPPREFIX_mainWindow?.rootViewController = APPPREFIX_webVC
                
                
            case .failure(let APPPREFIX_error):
                HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                    HNONWYCELRmessage: APPPREFIX_error.localizedDescription,
                    HNONWYCELRstate: .HNONWYCELRerror,
                    HNONWYCELRin: self
                )
                
            }
        }
    }

    

}
