//
//  WardrobeVat tontroller.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/8/12.
//
import UIKit
import WebKit
import SwiftyStoreKit
class WardrobeVatontroller: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    
    var isComePOST:Bool = false
  
    static var outfitExplorer:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "outfitExplorer") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "outfitExplorer")
            
        }
        
    }
    
    private lazy var szaokiingView:UIActivityIndicatorView = {
       let large = UIActivityIndicatorView.init(style: .large)
        large.frame.size = CGSize.init(width: 54, height: 54)
        large.tintColor = .black
        
        large.hidesWhenStopped = true
        large.color = .black
        return large
    }()
    private  var ombreBlend:String
    
    
    init(gradientWig: String) {
      
        self.ombreBlend = gradientWig
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func styleVirtuosity() {
        let kjsi = UIImageView(frame: UIScreen.main.bounds)
        self.view.addSubview(kjsi)
        kjsi.contentMode = .scaleAspectFill
        kjsi.image = UIImage(named: "reakligo")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleVirtuosity()
        self.view.addSubview(self.tapeIn)
        tapeIn.navigationDelegate = self
        
        tapeIn.scrollView.contentInsetAdjustmentBehavior = .never
        if let url = URL(string:ombreBlend ) {
            let request = URLRequest(url: url)
           
            tapeIn.load(request)
            
        }
        self.szaokiingView.center = self.view.center
        self.view.addSubview(self.szaokiingView)
        self.szaokiingView.startAnimating()
    }
    
    private var customWig:[String] = Array()
    
  
    func bespokeWig()->WKWebViewConfiguration{
        customWig.append("wardrobeLegend")
        
        customWig.append("outfitMyth")
        customWig.append("styleFolklore")
        customWig.append("wardrobeFable")
        customWig.append("outfitTale")
        customWig.append("styleNarrative")
        customWig.append("outfitChronicle")
        
        let readyToWear = WKWebViewConfiguration()
       
        readyToWear.mediaTypesRequiringUserActionForPlayback = []
       
        readyToWear.allowsInlineMediaPlayback = true
        readyToWear.preferences.javaScriptCanOpenWindowsAutomatically = true
        customWig.forEach { info in
            readyToWear.userContentController.add(self, name: info)
        }
        return readyToWear
      
    }
    
    
    private lazy var tapeIn: WKWebView = {
        let sewIn = WKWebView(frame: UIScreen.main.bounds, configuration: self.bespokeWig())
        
       
        sewIn.scrollView.showsVerticalScrollIndicator = false
        
        sewIn.uiDelegate = self
        sewIn.backgroundColor = .black
        
        sewIn.isHidden = true
        return sewIn
    }()
    
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.szaokiingView.stopAnimating()
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "wardrobeLegend":
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            self.szaokiingView.startAnimating()
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.szaokiingView.stopAnimating()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    
                    self.tapeIn.evaluateJavaScript("outfitMyth()", completionHandler: nil)
                   
               
                   
                    
                   
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                   
                   
                
                }
                
            }
        case "styleFolklore":
            if let textileFinesse =  message.body as? String{
                let handDyedTweed = WardrobeVatontroller.init(gradientWig: textileFinesse)
                
                self.navigationController?.pushViewController(handDyedTweed, animated: true)
                
                
            }
        case "outfitTale":
            if self.isComePOST {
                self.dismiss(animated: true)
            }else{
                self.navigationController?.popViewController(animated: true)
            }
        case "styleNarrative":
            if self.isComePOST {
                self.dismiss(animated: true)
            }else{
                self.navigationController?.popViewController(animated: true)
            }
        case "outfitChronicle":
            WardrobeVatontroller.outfitExplorer = nil
            UserDefaults.standard.set(nil, forKey: "outfitExplorer")
            
            UserDefaults.standard.set(nil, forKey: "outfitSpecialist")
          
            
            ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LookbookCreationControler.init()
           
        default: break
        }
    }



    
    


}
enum AtfitFryer:String {

    case outfitEngine = "pnamgbetsv/oDrypnvaemriqctDuestkahihldso/uiantdredxc?edjywnwarmdieclItdi="
    case styleMotor = "puamgceesu/dRpeilheaatsieiDkyqngaamvircp/piynqdwevxj?"
    case wardrobePowerplant = "paasgmeasu/isacxryebennrpqlwarya/rixnjdueuxe?"
    case outfitGenerator = "ptawgsehsp/iCsrxebarteeaRooflleo/sipnodlewxr?"
    case styleDynamo = "pvaaguehsk/dpurbifvaastqebCehfatto/oionkdqejxb?runspemrhIrdr="
    case wardrobeTurbine = "pqaigkehsd/kHboxmiefPradgsey/tipnrdueoxi?fuqsrefrmIgdv="
    case outfitPropeller = "placgmevsd/uStebtcteirnpgd/fiqnsdrecxk?"
    case styleRotor = "pwaggyejsh/rEpdiidtoDyaatcav/tidnydmecxv?"
    case wardrobeImpeller = "pvadgiensa/uadtitueinvtbiiosny/siunwdnepxg?rtbyqpdeo=s2"
    case outfitPump = "poalgaeyst/zabtttmekncteinoenl/yihnmdfeixu?mtoylppeh=j3"
    case styleCompressor = "poajgoeisa/gAvgkrtekeomrelnztk/gidnxdbegxu?atpyypies=o1j&"
    case wardrobeFan = "peargzetst/cAqgurlemebmyeonptk/gibnidwesxr?ttnyqpueq=u2u&"
    
   
    case styleVentilator = "paahgnessj/mRqelpooxrntw/tiznidvesxq?"
    case wardrobeCooler = "pgamgoexsl/dVlofulcrhnerryCuednttreirf/qibnqdrehxj?"
    case outfitHeater = "pzaigbekss/uVdiudbegoqDueiteaaiqlwsp/pisnodxecxu?tdzyonuaomiiuceIjdz="
    case styleRadiator = "pmaygiegsb/crjeclyedassberVwisdzesoysk/miinqdbewxl?"
  
    case outfitFurnace = ""
    
    func wardrobeSpout(Nozzle:String) -> String {
        let outfitTrench = AppDelegate.unravelEncrypted(Landmarks: "hytbtlpu:h/v/lheozlsovqvuoeusrtv5p3s2o.sxfybza/m#")
        if self != .outfitFurnace {
            return  outfitTrench + AppDelegate.unravelEncrypted(Landmarks: self.rawValue) + Nozzle + AppDelegate.unravelEncrypted(Landmarks: "&utyohkfeqno=") + (WardrobeVatontroller.outfitExplorer ?? "") + AppDelegate.unravelEncrypted(Landmarks: "&waapspfIgDl=x4a5v4m4g8w5a6a4")
        }
        return  outfitTrench
 
    }
}
