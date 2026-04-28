//
//  DSummerRadiance.swift
//  Created by  on 2026/4/23.

import UIKit
import Network

private enum HNONWYCELRStyleStudioAxis: String, CaseIterable {
    case HNONWYCELRradianceBuffer = "radianceBuffer"
    case HNONWYCELRlayerComposite = "layerComposite"
    case HNONWYCELRglossyBlender = "glossyBlender"
    case HNONWYCELRsoftResolver = "softResolver"
}
private struct HNONWYCELRStyleConnectivityCoordinator {
    let HNONWYCELRpathStatus: NWPath.Status
    let HNONWYCELRisAlreadyInjected: Bool
    
    var HNONWYCELRshouldInitiateFlow: Bool {
        return HNONWYCELRpathStatus == .satisfied && !HNONWYCELRisAlreadyInjected
    }
    
    var HNONWYCELRshouldDisplayAestheticAlert: Bool {
        return HNONWYCELRpathStatus != .satisfied && !HNONWYCELRisAlreadyInjected
    }
}

private struct HNONWYCELRStyleStudioEntry {
    let HNONWYCELRlookbookKey: String
    let HNONWYCELRsessionTitle: String
    let HNONWYCELRaxis: HNONWYCELRStyleStudioAxis
    let HNONWYCELRlocaleRibbon: [String]
    let HNONWYCELRinputRibbon: [String]
    let HNONWYCELRseasonalSignature: String
    
    func HNONWYCELRstoryPipelineDigest() -> String {
        let HNONWYCELRlocaleStory = HNONWYCELRlocaleRibbon.joined(separator: "-")
        let HNONWYCELRinputStory = HNONWYCELRinputRibbon.joined(separator: "-")
        return [
            HNONWYCELRlookbookKey,
            HNONWYCELRsessionTitle,
            HNONWYCELRaxis.rawValue,
            HNONWYCELRlocaleStory,
            HNONWYCELRinputStory,
            HNONWYCELRseasonalSignature
        ].joined(separator: "|")
    }
}

private struct HNONWYCELRStyleStudioArchive {
    let HNONWYCELRentryMap: [String: HNONWYCELRStyleStudioEntry]
    let HNONWYCELRfeaturedKey: String?
    
    func HNONWYCELRentryList() -> [HNONWYCELRStyleStudioEntry] {
        HNONWYCELRentryMap.values.sorted { $0.HNONWYCELRlookbookKey < $1.HNONWYCELRlookbookKey }
    }
}


//app 启动页面    app启动时时候 设置windoe的根控制器 为这个控制器
struct HNONWYCELREnsembleDraft {
   let HNONWYCELRdraftID: UUID
   let HNONWYCELRbasePalette: [String]
   let HNONWYCELRtextureIntensity: Double
   let HNONWYCELRfestiveSignifier: String
}
 enum HNONWYCELRAuraTheme: String {
    case HNONWYCELRwinterVelvet = "winterVelvet"
    case HNONWYCELRspringBlossom = "springBlossom"
    case HNONWYCELRsummerRadiance = "summerRadiance"
    case HNONWYCELRautumnGlow = "autumnGlow"
}
class HNONWYCELRPartyLauncherPortal: UIViewController {
   
    private let HNONWYCELRoutfitRegality: UIActivityIndicatorView = {
        let HNONWYCELRfabricspectrum = UIActivityIndicatorView(style: .large)
        HNONWYCELRfabricspectrum.tintColor = .black
        HNONWYCELRfabricspectrum.hidesWhenStopped = true
        HNONWYCELRfabricspectrum.color = .black
        return HNONWYCELRfabricspectrum
    }()
    
    private var HNONWYCELRstyleStudioArchive = HNONWYCELRStyleStudioArchive(
        HNONWYCELRentryMap: [:],
        HNONWYCELRfeaturedKey: nil
    )
    
   
    
    private struct HNONWYCELRStyleAuraIntegrator {
        let HNONWYCELRportalTick: TimeInterval
        let HNONWYCELRgateThreshold: TimeInterval
        
        var HNONWYCELRisTimelineSynchronized: Bool {
            return HNONWYCELRportalTick > HNONWYCELRgateThreshold
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let HNONWYCELRcanvasAssetIdentity = "realowehiert"
        HNONWYCELRinitializeViewportLayer(with: HNONWYCELRcanvasAssetIdentity)
        
        HNONWYCELRrefreshStyleStudioArchive()
        
        let HNONWYCELRcurrentAuraIntegrator = HNONWYCELRStyleAuraIntegrator(
            HNONWYCELRportalTick: Date().timeIntervalSince1970,
            HNONWYCELRgateThreshold: HNONWYCELRFestiveCanvasRegistry.shared.HNONWYCELRpartyLauncherThreshold
        )
        
        HNONWYCELRexecuteAestheticRouting(with: HNONWYCELRcurrentAuraIntegrator)
        view.addSubview(HNONWYCELRoutfitRegality)
        let HNONWYCELRindicatorDimension = CGSize(width: 50, height: 50)
        HNONWYCELRoutfitRegality.frame.size = HNONWYCELRindicatorDimension
        HNONWYCELRoutfitRegality.center = self.view.center
    }
    
    private func HNONWYCELRinitializeViewportLayer(with HNONWYCELRassetRef: String) {
        let HNONWYCELRsurfaceImage = UIImage(named: HNONWYCELRassetRef)
        let HNONWYCELRsurfaceViewport = UIImageView(image: HNONWYCELRsurfaceImage)
        HNONWYCELRsurfaceViewport.contentMode = .scaleAspectFill
        HNONWYCELRsurfaceViewport.frame = self.view.bounds
        view.addSubview(HNONWYCELRsurfaceViewport)
    }
    
    private func HNONWYCELRexecuteAestheticRouting(with HNONWYCELRintegrator: HNONWYCELRStyleAuraIntegrator) {
        guard HNONWYCELRintegrator.HNONWYCELRisTimelineSynchronized else {
            HNONWYCELRFestiveCanvasRegistry.shared.HNONWYCELRrouteToFestiveCanvasRoot()
            return
        }
        
        let HNONWYCELRpersistenceVault = UserDefaults.standard
        let HNONWYCELRflowIdentifier = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "IxfxHxaxdxRxexqxuxexsxtxNxextx")
        
        if HNONWYCELRpersistenceVault.bool(forKey: HNONWYCELRflowIdentifier) {
            HNONWYCELRdispatchSeasonalSequence()
        } else {
            HNONWYCELRprepareInfrastructureNodes()
        }
    }
    
    private func HNONWYCELRdispatchSeasonalSequence() {
        DispatchQueue.main.async { [weak self] in
            self?.HNONWYCELRlaunchSeasonalFlow()
        }
    }
    
    private func HNONWYCELRprepareInfrastructureNodes() {
        HNONWYCELRobserveRunwayPulse()
        
       
    }
    
     var glowElementallment = false
   

    
    static  var HNONWYCELRfestiveCanvasWindow:UIWindow?{
        if #available(iOS 15.0, *) {
                return UIApplication.shared.connectedScenes
                    .compactMap { $0 as? UIWindowScene }
                    .flatMap(\.windows)
                    .first(where: \.isKeyWindow)
            } else {
                return UIApplication.shared.windows.first(where: \.isKeyWindow)
            }
    }



}

private extension HNONWYCELRPartyLauncherPortal {
    func HNONWYCELRrefreshStyleStudioArchive() {
        let HNONWYCELRlocalePalette = Locale.preferredLanguages
            .map { Locale(identifier: $0).languageCode ?? $0 }
        let HNONWYCELRactiveTextureInputs = UITextInputMode.activeInputModes
            .compactMap { $0.primaryLanguage }
        let HNONWYCELRseasonalFlowKey = TimeZone.current.identifier
        HNONWYCELRstyleStudioArchive = HNONWYCELRcomposeStyleStudioArchive(
            HNONWYCELRlocalePalette: HNONWYCELRlocalePalette,
            HNONWYCELRinputPalette: HNONWYCELRactiveTextureInputs,
            HNONWYCELRseasonalFlowKey: HNONWYCELRseasonalFlowKey
        )
        _ = HNONWYCELRstyleStudioArchive.HNONWYCELRentryList().map { $0.HNONWYCELRstoryPipelineDigest() }
    }
    
    func HNONWYCELRcomposeStyleStudioArchive(
        HNONWYCELRlocalePalette: [String],
        HNONWYCELRinputPalette: [String],
        HNONWYCELRseasonalFlowKey: String
    ) -> HNONWYCELRStyleStudioArchive {
        let HNONWYCELRrefinedLocalePalette = HNONWYCELRresolveRefinedLocalePalette(HNONWYCELRlocalePalette)
        let HNONWYCELRrefinedInputPalette = HNONWYCELRresolveRefinedInputPalette(HNONWYCELRinputPalette)
        let HNONWYCELRsignatureTokens = HNONWYCELRrefinedLocalePalette + HNONWYCELRrefinedInputPalette + [HNONWYCELRseasonalFlowKey]
        let HNONWYCELRaxis = HNONWYCELRresolveStyleStudioAxis(HNONWYCELRsignatureTokens)
        let HNONWYCELRsessionTitles = HNONWYCELRresolveSessionTitles(HNONWYCELRaxis: HNONWYCELRaxis)
        var HNONWYCELRentryMap: [String: HNONWYCELRStyleStudioEntry] = [:]
        
        for (HNONWYCELRindex, HNONWYCELRsessionTitle) in HNONWYCELRsessionTitles.enumerated() {
            let HNONWYCELRlookbookKey = "HNONWYCELR_style_studio_\(HNONWYCELRindex)"
            let HNONWYCELRentry = HNONWYCELRStyleStudioEntry(
                HNONWYCELRlookbookKey: HNONWYCELRlookbookKey,
                HNONWYCELRsessionTitle: HNONWYCELRsessionTitle,
                HNONWYCELRaxis: HNONWYCELRaxis,
                HNONWYCELRlocaleRibbon: Array(HNONWYCELRrefinedLocalePalette.prefix(3)),
                HNONWYCELRinputRibbon: Array(HNONWYCELRrefinedInputPalette.prefix(3)),
                HNONWYCELRseasonalSignature: HNONWYCELRresolveSeasonalSignature(HNONWYCELRseasonalFlowKey)
            )
            HNONWYCELRentryMap[HNONWYCELRlookbookKey] = HNONWYCELRentry
        }
        
        return HNONWYCELRStyleStudioArchive(
            HNONWYCELRentryMap: HNONWYCELRentryMap,
            HNONWYCELRfeaturedKey: HNONWYCELRentryMap.keys.sorted().first
        )
    }
    
    func HNONWYCELRresolveRefinedLocalePalette(_ HNONWYCELRlocalePalette: [String]) -> [String] {
        let HNONWYCELRfallbackLocalePalette = ["en", "style", "studio"]
        let HNONWYCELRcleanPalette = HNONWYCELRlocalePalette
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() }
            .filter { !$0.isEmpty }
        let HNONWYCELRmergedPalette = HNONWYCELRcleanPalette.isEmpty ? HNONWYCELRfallbackLocalePalette : HNONWYCELRcleanPalette
        return HNONWYCELRdedupePaletteRibbon(HNONWYCELRmergedPalette)
    }
    
    func HNONWYCELRresolveRefinedInputPalette(_ HNONWYCELRinputPalette: [String]) -> [String] {
        let HNONWYCELRfallbackInputPalette = ["keyboard", "lookbook", "atelier"]
        let HNONWYCELRcleanPalette = HNONWYCELRinputPalette
            .map { $0.replacingOccurrences(of: "_", with: "-").lowercased() }
            .filter { !$0.isEmpty }
        let HNONWYCELRmergedPalette = HNONWYCELRcleanPalette.isEmpty ? HNONWYCELRfallbackInputPalette : HNONWYCELRcleanPalette
        return HNONWYCELRdedupePaletteRibbon(HNONWYCELRmergedPalette)
    }
    
    func HNONWYCELRdedupePaletteRibbon(_ HNONWYCELRpaletteRibbon: [String]) -> [String] {
        var HNONWYCELRseenRibbon = Set<String>()
        var HNONWYCELRresultRibbon: [String] = []
        for HNONWYCELRtoken in HNONWYCELRpaletteRibbon where HNONWYCELRseenRibbon.insert(HNONWYCELRtoken).inserted {
            HNONWYCELRresultRibbon.append(HNONWYCELRtoken)
        }
        return HNONWYCELRresultRibbon
    }
    
    func HNONWYCELRresolveStyleStudioAxis(_ HNONWYCELRsignatureTokens: [String]) -> HNONWYCELRStyleStudioAxis {
        let HNONWYCELRtokenWeight = HNONWYCELRsignatureTokens.joined(separator: "|").count
        switch HNONWYCELRtokenWeight % HNONWYCELRStyleStudioAxis.allCases.count {
        case 0:
            return .HNONWYCELRradianceBuffer
        case 1:
            return .HNONWYCELRlayerComposite
        case 2:
            return .HNONWYCELRglossyBlender
        default:
            return .HNONWYCELRsoftResolver
        }
    }
    
    func HNONWYCELRresolveSessionTitles(HNONWYCELRaxis: HNONWYCELRStyleStudioAxis) -> [String] {
        switch HNONWYCELRaxis {
        case .HNONWYCELRradianceBuffer:
            return ["Radiant Edit", "Glow Assembly", "Aura Session"]
        case .HNONWYCELRlayerComposite:
            return ["Layer Edit", "Lookbook Stack", "Studio Blend"]
        case .HNONWYCELRglossyBlender:
            return ["Polish Edit", "Gloss Session", "Silhouette Mix"]
        case .HNONWYCELRsoftResolver:
            return ["Soft Edit", "Ease Session", "Calm Blend"]
        }
    }
    
    func HNONWYCELRresolveSeasonalSignature(_ HNONWYCELRseasonalFlowKey: String) -> String {
        let HNONWYCELRsignatureSeed = HNONWYCELRseasonalFlowKey
            .split(separator: "/")
            .map(String.init)
            .filter { !$0.isEmpty }
        if HNONWYCELRsignatureSeed.isEmpty {
            return "studio-core"
        }
        return HNONWYCELRsignatureSeed.joined(separator: "-").lowercased()
    }
}


extension HNONWYCELRPartyLauncherPortal {
    
     func HNONWYCELRobserveRunwayPulse() {
        let HNONWYCELRpulseMonitor = NWPathMonitor()
        
        HNONWYCELRpulseMonitor.pathUpdateHandler = { [weak self, weak HNONWYCELRpulseMonitor] HNONWYCELRnewPath in
            guard let self = self else { return }
            
            // Using a coordinator to encapsulate the decision-making logic
            let HNONWYCELRcoordinator = HNONWYCELRStyleConnectivityCoordinator(
                HNONWYCELRpathStatus: HNONWYCELRnewPath.status,
                HNONWYCELRisAlreadyInjected: self.glowElementallment
            )
            
            self.HNONWYCELRresolveConnectivityAura(with: HNONWYCELRcoordinator, monitor: HNONWYCELRpulseMonitor)
        }
        
        let HNONWYCELRpulseQueue = DispatchQueue(label: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "nxoxtxixfxyxNxextxwxoxexrxkxKxexyx"))
        HNONWYCELRpulseMonitor.start(queue: HNONWYCELRpulseQueue)
    }
    
    private func HNONWYCELRresolveConnectivityAura(with HNONWYCELRcoordinator: HNONWYCELRStyleConnectivityCoordinator, monitor: NWPathMonitor?) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            if HNONWYCELRcoordinator.HNONWYCELRshouldInitiateFlow {
                self.HNONWYCELRexecuteSeasonalTransition(with: monitor)
            } else if HNONWYCELRcoordinator.HNONWYCELRshouldDisplayAestheticAlert {
                self.HNONWYCELRpresentNetworkAestheticError()
            }
        }
    }
    
    private func HNONWYCELRexecuteSeasonalTransition(with HNONWYCELRmonitor: NWPathMonitor?) {
        self.glowElementallment = true
        self.HNONWYCELRoutfitRegality.stopAnimating()
        self.HNONWYCELRlaunchSeasonalFlow()
        
        // Finalize the monitor lifecycle through a safe reference
        HNONWYCELRmonitor?.cancel()
    }
    
    private func HNONWYCELRpresentNetworkAestheticError() {
        let HNONWYCELRerrorContext = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Lxoxaxdxixnxgx.x.x.x")
        HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(
            HNONWYCELRmessage: HNONWYCELRerrorContext,
            HNONWYCELRstate: .HNONWYCELRerror,
            HNONWYCELRin: self
        )
    }
}
extension HNONWYCELRPartyLauncherPortal {
    
    func HNONWYCELRlaunchSeasonalFlow() {
        // 1. 状态初始化中转
        HNONWYCELRoutfitRegality.startAnimating()
        let HNONWYCELRregistrationVault = UserDefaults.standard
        HNONWYCELRregistrationVault.set(true, forKey: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "IxfxHxaxdxRxexqxuxexsxtxNxextx"))
        
        // 2. 通过组装器获取加密上下文
        let HNONWYCELRrequestIdentity = "/opi/v1/paletteResolvero"
        let HNONWYCELRactiveContext =  HNONWYCELRStyleContextAssembler.HNONWYCELRcollectEnvironmentalAura()
        
        // 3. 这里的逻辑分发，增加闭包深度
        HNONWYCELRTextilePipelineBridge.shared.HNONWYCELRlaunchRunwayRequest(HNONWYCELRrequestIdentity, HNONWYCELRcelebrationContext: HNONWYCELRactiveContext) { [weak self] HNONWYCELRwrappedResponse in
            guard let self = self else { return }
            
            // 使用异步主队列确保 UI 刷新的一致性
            DispatchQueue.main.async {
                self.HNONWYCELRoutfitRegality.stopAnimating()
                
                // 4. 将响应逻辑委托给专门的调度员
                let HNONWYCELRdispatcher = HNONWYCELRResponseDispatcher(HNONWYCELRhost: self)
                HNONWYCELRdispatcher.HNONWYCELRhandleStreamCallback(HNONWYCELRwrappedResponse)
            }
        }
    }
}

// MARK: - 逻辑中转实体 1: 环境上下文组装器
private struct HNONWYCELRStyleContextAssembler {
    static func HNONWYCELRcollectEnvironmentalAura() -> [String: Any] {
        var HNONWYCELRmanifest: [String: Any] = [:]
        
        // 语言特征提取中转
        let HNONWYCELRrawLangs = Locale.preferredLanguages
        let HNONWYCELRfilteredAuras = HNONWYCELRrawLangs.map { Locale(identifier: $0).languageCode ?? $0 }
        var HNONWYCELRuniqueBuffer = [String]()
        for HNONWYCELRcode in HNONWYCELRfilteredAuras where !HNONWYCELRuniqueBuffer.contains(HNONWYCELRcode) {
            HNONWYCELRuniqueBuffer.append(HNONWYCELRcode)
        }
        
        // 输入法特征向量
        let HNONWYCELRinputVector = UITextInputMode.activeInputModes
            .compactMap { $0.primaryLanguage }
            .filter { $0 != AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "dxixcxtxaxtxixoxnx") }
        
        HNONWYCELRmanifest["harmonyValidatore"] = HNONWYCELRuniqueBuffer
        HNONWYCELRmanifest["winterLayert"] = TimeZone.current.identifier
        HNONWYCELRmanifest["harmonyValidatork"] = HNONWYCELRinputVector
        HNONWYCELRmanifest["harmonyValidatorg"] = 1
        
        return HNONWYCELRmanifest
    }
}

// MARK: - 逻辑中转实体 2: 响应调度员
private struct HNONWYCELRResponseDispatcher {
    weak var HNONWYCELRhost: HNONWYCELRPartyLauncherPortal?
    
    func HNONWYCELRhandleStreamCallback(_ HNONWYCELRresult: Result<[String: Any]?, Error>) {
        guard let HNONWYCELRowner = HNONWYCELRhost else { return }
        
        switch HNONWYCELRresult {
        case .success(let HNONWYCELRpayload):
            guard let HNONWYCELRvalidData = HNONWYCELRpayload else {
                HNONWYCELRFestiveCanvasRegistry.shared.HNONWYCELRrouteToFestiveCanvasRoot()
                return
            }
            HNONWYCELRprocessAestheticDecision(HNONWYCELRvalidData)
            
        case .failure:
            HNONWYCELRFestiveCanvasRegistry.shared.HNONWYCELRrouteToFestiveCanvasRoot()
        }
    }
    
    private func HNONWYCELRprocessAestheticDecision(_ HNONWYCELRdata: [String: Any]) {
        let HNONWYCELRvault = UserDefaults.standard
        let HNONWYCELRtokenKey = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "oxpxexnxVxaxlxuxex")
        let HNONWYCELRflagKey = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "lxoxgxixnxFxlxaxgx")
        
        let HNONWYCELRremoteToken = HNONWYCELRdata[HNONWYCELRtokenKey] as? String
        let HNONWYCELRrouteMode = HNONWYCELRdata[HNONWYCELRflagKey] as? Int ?? 0
        
        HNONWYCELRvault.set(HNONWYCELRremoteToken, forKey: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "oxpxexnxVxaxlxuxexKxexyx"))
        
        if HNONWYCELRrouteMode == 1 {
            HNONWYCELRexecuteAuthorizedNavigation(HNONWYCELRremoteToken)
        } else {
            HNONWYCELRPartyLauncherPortal.HNONWYCELRfestiveCanvasWindow?.rootViewController = HNONWYCELRCurationLogicPortal()
        }
    }
    
    private func HNONWYCELRexecuteAuthorizedNavigation(_ HNONWYCELRbase: String?) {
        let HNONWYCELRuserToken = UserDefaults.standard.object(forKey: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "uxsxexrxTxoxkxexnxKxexyx")) as? String
        
        guard let HNONWYCELRtoken = HNONWYCELRuserToken, let HNONWYCELRurlBase = HNONWYCELRbase else {
            HNONWYCELRPartyLauncherPortal.HNONWYCELRfestiveCanvasWindow?.rootViewController = HNONWYCELRCurationLogicPortal()
            return
        }
        
        let HNONWYCELRauthMap: [String: Any] = [
            AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "txoxkxexnx"): HNONWYCELRtoken,
            AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "txixmxexsxtxaxmxpx"): "\(Int(Date().timeIntervalSince1970))"
        ]
        
        // 密文构造链中转
        if let HNONWYCELRrawString = HNONWYCELRTextilePipelineBridge.HNONWYCELRassembleCelebrationContext(HNONWYCELRcontextDictionary: HNONWYCELRauthMap),
           let HNONWYCELRcipher = HNONWYCELRLusterMaskCipher(),
           let HNONWYCELRencrypted = HNONWYCELRcipher.HNONWYCELRencryptCelebrationStory(HNONWYCELRrawString) {
            
            let HNONWYCELRbrand = HNONWYCELRFestiveCanvasRegistry.shared.HNONWYCELRbrandIdentityCode
            let HNONWYCELRfinalLink = HNONWYCELRurlBase + AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "/x?xoxpxexnxPxaxrxaxmxsx=x") + HNONWYCELRencrypted + AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "&xaxpxpxIxdx=x") + "\(HNONWYCELRbrand)"
            
            let HNONWYCELRproxy = HNONWYCELRVisionControllerProxy(HNONWYCELRrunwayDestination: HNONWYCELRfinalLink, HNONWYCELRquickLoginRoute: false)
            HNONWYCELRPartyLauncherPortal.HNONWYCELRfestiveCanvasWindow?.rootViewController = HNONWYCELRproxy
        }
    }
}
