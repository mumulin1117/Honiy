//
//  HNONWCdazzlingPresence.swift
//  VoioDeaniy
//
//  Created by  on 2026/4/23.
//


import WebKit
import UIKit


public class HNONWCdazzlingPresenceParamaKey: NSObject {
    public var APPPREFIX_payload: String
    public var APPPREFIX_transactionId: String
    public var APPPREFIX_callbackResult: String

    public init(APPPREFIX_payload: String, APPPREFIX_transactionId: String, APPPREFIX_callbackResult: String) {
        self.APPPREFIX_payload = APPPREFIX_payload
        self.APPPREFIX_transactionId = APPPREFIX_transactionId
        self.APPPREFIX_callbackResult = APPPREFIX_callbackResult
    }
}
//app B包主页面

class HNONWCdazzlingPresence: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private let HNONWYCELRoutfitRegality: UIActivityIndicatorView = {
        let HNONWYCELRfabricspectrum = UIActivityIndicatorView(style: .large)
        HNONWYCELRfabricspectrum.tintColor = .black
        HNONWYCELRfabricspectrum.hidesWhenStopped = true
        HNONWYCELRfabricspectrum.color = .black
        return HNONWYCELRfabricspectrum
    }()
    private var APPPREFIX_webViewContainer:WKWebView?
   
     
    private  var APPPREFIX_isQuickLoginEnabled = false
    private var APPPREFIX_initialURLString:String
    
    init(APPPREFIX_urlString:String,APPPREFIX_quickLoginEnabled:Bool) {
        APPPREFIX_initialURLString = APPPREFIX_urlString
        
        APPPREFIX_isQuickLoginEnabled = APPPREFIX_quickLoginEnabled
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 禁用侧滑返回手势
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        // 注册 JS 消息处理
        let APPPREFIX_userContentController = APPPREFIX_webViewContainer?.configuration.userContentController
        APPPREFIX_userContentController?.add(self, name: HNONWCcasualChic.APPPREFIX_54)
        APPPREFIX_userContentController?.add(self, name: HNONWCcasualChic.APPPREFIX_55)
        APPPREFIX_userContentController?.add(self, name: HNONWCcasualChic.APPPREFIX_56)
        APPPREFIX_userContentController?.add(self, name: HNONWCcasualChic.APPPREFIX_71)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // 恢复侧滑返回手势
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
        // 移除 JS 消息处理
        APPPREFIX_webViewContainer?.configuration.userContentController.removeAllScriptMessageHandlers()
    }

 
    private func APPPREFIX_addBackgroundImageView()  {
     
        let APPPREFIX_backgroundImage = UIImage(named: "sparkAnimatorhoniy")
       
        let APPPREFIX_BbckgroundImageView = UIImageView(image:APPPREFIX_backgroundImage )
        APPPREFIX_BbckgroundImageView.contentMode = .scaleAspectFill
        APPPREFIX_BbckgroundImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(APPPREFIX_BbckgroundImageView)
       
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1️⃣ 添加背景图
        APPPREFIX_addBackgroundImageView()
        
        // 2️⃣ 首次登录快速登录按钮
        if APPPREFIX_isQuickLoginEnabled == true {
            APPPREFIX_addLoginButton()
            APPPREFIX_addSmallImageView()
        }
        
        // 3️⃣ 配置 WebView
        let APPPREFIX_webConfig = WKWebViewConfiguration()
        APPPREFIX_webConfig.allowsAirPlayForMediaPlayback = false
        APPPREFIX_webConfig.allowsInlineMediaPlayback = true
        APPPREFIX_webConfig.preferences.javaScriptCanOpenWindowsAutomatically = true
        APPPREFIX_webConfig.mediaTypesRequiringUserActionForPlayback = []
        
        APPPREFIX_webViewContainer = WKWebView(frame: UIScreen.main.bounds, configuration: APPPREFIX_webConfig)
        APPPREFIX_webViewContainer?.isHidden = true
        APPPREFIX_webViewContainer?.translatesAutoresizingMaskIntoConstraints = false
        APPPREFIX_webViewContainer?.scrollView.alwaysBounceVertical = false
        APPPREFIX_webViewContainer?.scrollView.contentInsetAdjustmentBehavior = .never
        APPPREFIX_webViewContainer?.navigationDelegate = self
        APPPREFIX_webViewContainer?.uiDelegate = self
        APPPREFIX_webViewContainer?.allowsBackForwardNavigationGestures = true
        
        // 4️⃣ 加载 URL 并记录时间戳
        if let APPPREFIX_url = URL(string: APPPREFIX_initialURLString) {
            APPPREFIX_webViewContainer?.load(URLRequest(url: APPPREFIX_url))
           
        }
        
        view.addSubview(APPPREFIX_webViewContainer!)
        HNONWYCELRoutfitRegality.frame.size = CGSize(width: 50, height: 50)
        HNONWYCELRoutfitRegality.center = self.view.center
        // 5️⃣ 显示加载提示
        HNONWYCELRoutfitRegality.startAnimating()
    }
    private func APPPREFIX_addLoginButton()  {
        let  APPPREFIX_loginButton = UIButton.init()
        
        let APPPREFIX_backgroundImage = UIImage(named: "styleEmitterHoniy")
     
        APPPREFIX_loginButton.setBackgroundImage(APPPREFIX_backgroundImage, for: .normal)
       
        view.addSubview(APPPREFIX_loginButton)
       
        APPPREFIX_loginButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            APPPREFIX_loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            APPPREFIX_loginButton.heightAnchor.constraint(equalToConstant: 52),
            APPPREFIX_loginButton.widthAnchor.constraint(equalToConstant: 335),
            APPPREFIX_loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 55)
        ])
       
    }
    private  func APPPREFIX_addSmallImageView() {
        if TgextileLuster.shared.APPPREFIX_smallImage != "" {
            let APPPREFIX_backgroundImage = UIImage(named:TgextileLuster.shared.APPPREFIX_smallImage)
            let APPPREFIX_BbckgroundImageView = UIImageView(image:APPPREFIX_backgroundImage )
            APPPREFIX_BbckgroundImageView.contentMode = .scaleAspectFill
//            APPPREFIX_BbckgroundImageView.frame = CGRect(x: 0, y: 0, width: APPPREFIX_SDKConfig.shared.APPPREFIX_smallImageWidth, height: APPPREFIX_SDKConfig.shared.APPPREFIX_smallImageHeight)
//            APPPREFIX_BbckgroundImageView.center.x = self.view.center.x
//            APPPREFIX_BbckgroundImageView.frame.origin.y = -self.view.safeAreaInsets.bottom - 55
            
            APPPREFIX_BbckgroundImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(APPPREFIX_BbckgroundImageView)
            NSLayoutConstraint.activate([
                APPPREFIX_BbckgroundImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                APPPREFIX_BbckgroundImageView.heightAnchor.constraint(equalToConstant:115),
                APPPREFIX_BbckgroundImageView.widthAnchor.constraint(equalToConstant: 202),
                APPPREFIX_BbckgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                            constant: -self.view.safeAreaInsets.bottom - 55 - 52 - 30)
            ])
            
        }
    }
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {

        if let url = navigationAction.request.url,
           let scheme = url.scheme?.lowercased(),
           scheme != "http" && scheme != "https" && scheme != "file" && scheme != "about" {

            UIApplication.shared.open(url, options: [:]) { [weak webView] success in
                let state = success ? "success" : "failed"
                let js = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(state)', url: '\(url.absoluteString)' }
                }));
                """
                DispatchQueue.main.async {
                    webView?.evaluateJavaScript(js, completionHandler: nil)
                }
            }

            decisionHandler(.cancel)
            return
        }

        decisionHandler(.allow)
    }
    
    deinit {
        self.APPPREFIX_webViewContainer?.configuration.userContentController.removeScriptMessageHandler(forName: HNONWCcasualChic.APPPREFIX_71)
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
       
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            // 1️⃣ 页面加载完成，显示加载指示器并隐藏遮罩
            self.APPPREFIX_webViewContainer?.isHidden = false
            self.HNONWYCELRoutfitRegality.stopAnimating()

            // 2️⃣ 首次加载标记复位
            if self.APPPREFIX_isQuickLoginEnabled == true {
                self.APPPREFIX_isQuickLoginEnabled = false
            }
        }))
       

       
    }

    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {

        // -------------------------------
        // 充值支付业务
        // -------------------------------
        if message.name == HNONWCcasualChic.APPPREFIX_54,
           let APPPREFIX_payload = message.body as? [String: Any] {

            let APPPREFIX_productID = APPPREFIX_payload[HNONWCcasualChic.APPPREFIX_57] as? String ?? ""
            let APPPREFIX_orderCode = APPPREFIX_payload[HNONWCcasualChic.APPPREFIX_58] as? String ?? ""

            view.isUserInteractionEnabled = false
            HNONWYCELRoutfitRegality.startAnimating()

            HNONWYCELRPutAccessory.shared.HNONWYCELRtexturemapping(HNONWYCELRseasonalstyling: APPPREFIX_productID) { result in
                self.HNONWYCELRoutfitRegality.stopAnimating()
                self.view.isUserInteractionEnabled = true

                switch result {

                case .success:
                    // 1. 获取本地票据 + 交易号
                    guard let APPPREFIX_receiptData = HNONWYCELRPutAccessory.shared.HNONWYCELRfabricdraping() ,
                          let APPPREFIX_transactionID = HNONWYCELRPutAccessory.shared.HNONWYCELRfabricsculpt else {
                        HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                            HNONWYCELRmessage: HNONWCcasualChic.APPPREFIX_60,
                            HNONWYCELRstate: .HNONWYCELRerror,
                            HNONWYCELRin: self
                        )
                        return
                    }

                    // 2. 转 orderCode 为 JSON 字符串
                    guard let APPPREFIX_jsonData = try? JSONSerialization.data(
                            withJSONObject: [HNONWCcasualChic.APPPREFIX_58: APPPREFIX_orderCode],
                            options: [.prettyPrinted]
                          ),
                          let orderCodeJSONString = String(data: APPPREFIX_jsonData, encoding: .utf8) else {
                        HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                            HNONWYCELRmessage: HNONWCcasualChic.APPPREFIX_60,
                            HNONWYCELRstate: .HNONWYCELRerror,
                            HNONWYCELRin: self
                        )
                        return
                    }

                 
                    
                    HNONWCEsilkDrape.shared.APPPREFIX_postRequest(
                        "/opi/v1/garmentNodep",
                                APPPREFIX_params: [
                                    "compositionRootp":
                                APPPREFIX_receiptData.base64EncodedString(),

                                    "compositionRoott":
                                APPPREFIX_transactionID,

                                    "compositionRootc":
                                orderCodeJSONString
                        ],
                                APPPREFIX_isPaymentFlow: true
                    ) { result in
                        
                        self.view.isUserInteractionEnabled = true

                        switch result {
                        case .success:
                         
                            HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                                HNONWYCELRmessage: HNONWCcasualChic.APPPREFIX_30, // "Login Successful"
                                HNONWYCELRstate: .HNONWYCELRsuccess,
                                HNONWYCELRin: self
                            )
                        case .failure:
                            HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                                HNONWYCELRmessage: HNONWCcasualChic.APPPREFIX_60,
                                HNONWYCELRstate: .HNONWYCELRerror,
                                HNONWYCELRin: self
                            )
                           
                        }
                    }


                case .failure(let error):
                    self.view.isUserInteractionEnabled = true
                    HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
                        HNONWYCELRmessage: error.localizedDescription,
                        HNONWYCELRstate: .HNONWYCELRerror,
                        HNONWYCELRin: self
                    ) 
                }
            }

            return
        }


        // -------------------------------
        // 登出
        // -------------------------------
        if message.name == HNONWCcasualChic.APPPREFIX_55 {

            UserDefaults.standard.set(nil, forKey: HNONWCcasualChic.APPPREFIX_62)

            let APPPREFIX_nav = EoutfitCuration()
            APPPREFIX_AppLaunchController.APPPREFIX_mainWindow?.rootViewController = APPPREFIX_nav

            return
        }


        // -------------------------------
        // 页面加载完成
        // -------------------------------
        if message.name == HNONWCcasualChic.APPPREFIX_56 {
            APPPREFIX_webViewContainer?.isHidden = false
            HNONWYCELRoutfitRegality.stopAnimating()
        }
        
        //打开浏览器
        if message.name == HNONWCcasualChic.APPPREFIX_71,
           let APPPREFIX_body = message.body as? [String: Any],
           let APPPREFIX_urlString = APPPREFIX_body[HNONWCcasualChic.APPPREFIX_72] as? String,
            let APPPREFIX_url = URL(string: APPPREFIX_urlString)
        
        {
            UIApplication.shared.open(APPPREFIX_url, options: [:]){ [weak self] success in
                let state = success ? "success" : "failed"
                let js = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(state)', url: '\(APPPREFIX_url.absoluteString)' }
                }));
                """
                DispatchQueue.main.async {
                    self?.APPPREFIX_webViewContainer?.evaluateJavaScript(js, completionHandler: nil)
                }
            }
       
        }
    }

}
    

