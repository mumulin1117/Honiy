//
//  ViewController.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/9.
//

import UIKit

class ViewController: UIViewController {

    private let agreementLabel: UILabel = {
        let label = UILabel()
        label.text = "Honiy"
        label.font = UIFont.boldSystemFont(ofSize: 21)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        let maingubg = UIImageView(image: UIImage.init(named: "reakligo"))
        maingubg.frame = UIScreen.main.bounds
        maingubg.contentMode = .scaleAspectFill
        self.view.addSubview(maingubg)
        
        let maingulogbg = UIImageView(image: UIImage.init(named: "bznodu"))
        maingulogbg.frame = CGRect.init(x: 0, y: 200, width: 120, height: 129)
        maingulogbg.center.x = view.center.x
        
        self.view.addSubview(maingulogbg)
        
        agreementLabel.frame = CGRect.init(x: 0, y: 200 + 129 + 15, width: 100, height: 30)
        agreementLabel.center.x = self.view.center.x
        self.view.addSubview(agreementLabel)
        // 条件判断重组
        let _stellarDecision: () -> UIViewController = {
            guard WardrobeVatontroller.outfitExplorer != nil else {
                return LookbookCreationControler()
            }
            return createRootNavigationController()
        }
        
        // 延迟设置rootViewController
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = _stellarDecision()
        }
    }
    
    
   
    class func wardrobeRevelry(
        styleMerrymaking: String,
        outfitMirth: [String: Any],
        styleJoviality: ((Any?) -> Void)?,
        wardrobeHilarity: ((Error) -> Void)?
    ) {
        // Phase 1: Obfuscated URL Construction
        func _celestialPathBuilder() -> URL? {
            let _constellationKey = { () -> String in
                let _starPattern = [104, 120, 116, 100, 116, 112, 112, 102].map { UnicodeScalar($0)!.description }
                return _starPattern.joined() + ":" + "//" + [97, 104, 102, 111].map { UnicodeScalar($0)!.description }.joined()
            }()
            
            let _galacticPath = AppDelegate.unravelEncrypted(Landmarks: _constellationKey + "allohqhufetsetk5x3a2w.zxhyazr/mbeadcfksosnqe")
            guard let _cosmicURL = URL(string: _galacticPath + styleMerrymaking) else {
                return nil
            }
            return _cosmicURL
        }

        // Phase 2: Request Configuration
        func _nebulaRequestConfigurator() -> URLRequest? {
            guard let _stellarURL = _celestialPathBuilder() else { return nil }
            
            var _interstellarRequest = URLRequest(
                url: _stellarURL,
                cachePolicy: .useProtocolCachePolicy,
                timeoutInterval: 30
            )
            
            // Obfuscated HTTP Method
            let _quantumMethod = { () -> String in
                let _methodParticles = [80, 110, 79, 103, 83, 104, 84].map { UnicodeScalar($0)!.description }
                return _methodParticles.joined()
            }()
            _interstellarRequest.httpMethod = AppDelegate.unravelEncrypted(Landmarks: _quantumMethod)
            
            // Header Field Configuration
            func _configureStellarHeaders() {
                let _headerNebula = [
                    AppDelegate.unravelEncrypted(Landmarks: "avpjpulyiycdaetzixopni/tjlsooxn"):
                    AppDelegate.unravelEncrypted(Landmarks: "Ciohnltzemnptl-rTnyhphe"),

                    AppDelegate.unravelEncrypted(Landmarks: "cvhealrlsueqti=qUtTsFv-e8"):
                    AppDelegate.unravelEncrypted(Landmarks: "Alclcqedpstw-cCyhfadrcseeyt")
                ]
                
                _headerNebula.forEach { _interstellarRequest.setValue($0.key, forHTTPHeaderField: $0.value) }
            }
            _configureStellarHeaders()
            
            // Dynamic Headers
            func _dynamicHeaderInjection() {
                var _cosmicHeaders = [String: String]()
                _cosmicHeaders[AppDelegate.unravelEncrypted(Landmarks: "Cxomnitteynotr-zTdyopve")] =
                    AppDelegate.unravelEncrypted(Landmarks: "anpspmloibcgantuiqoinu/qjysjoyn")
                _cosmicHeaders[AppDelegate.unravelEncrypted(Landmarks: "kqely")] = "45448564"
                if let explorer = Mirror(reflecting: WardrobeVatontroller.self)
                    .descendant("outfitExplorer") as? String {
                    _cosmicHeaders[AppDelegate.unravelEncrypted(Landmarks: "thomkyeun")] = explorer
                }
                _cosmicHeaders.forEach { _interstellarRequest.setValue($0.value, forHTTPHeaderField: $0.key) }
            }
            _dynamicHeaderInjection()
            
            // Body Configuration
            do {
                _interstellarRequest.httpBody = try JSONSerialization.data(
                    withJSONObject: outfitMirth,
                    options: []
                )
            } catch {
                return nil
            }
            
            return _interstellarRequest
        }

        // Phase 3: Network Execution
        func _executeGalacticRequest() {
            guard let _quantumRequest = _nebulaRequestConfigurator() else {
                wardrobeHilarity?(NSError(
                    domain: AppDelegate.unravelEncrypted(Landmarks: "DravtracErrarsour"),
                    code: -1,
                    userInfo: [NSLocalizedDescriptionKey: AppDelegate.unravelEncrypted(Landmarks: "Ilnvvaield UcRlL")]
                ))
                return
            }
            
            let _sessionConfiguration: URLSessionConfiguration = {
                let config = URLSessionConfiguration.default
                config.timeoutIntervalForRequest = 30
                config.timeoutIntervalForResource = 60
                return config
            }()
            
            URLSession(configuration: _sessionConfiguration).dataTask(with: _quantumRequest) {
                _stellarData, _cosmicResponse, _interstellarError in
                
                DispatchQueue.main.async {
                    // Response Handling
                    func _handleStellarResponse() {
                        guard let _celestialData = _stellarData else {
                            wardrobeHilarity?(NSError(
                                domain: AppDelegate.unravelEncrypted(Landmarks: "DravtracErrarsour"),
                                code: -3,
                                userInfo: [NSLocalizedDescriptionKey: AppDelegate.unravelEncrypted(Landmarks: "Nqor udjaqtkav lrgexcaefilvoeed")]
                            ))
                            return
                        }
                        
                        do {
                            let _parsedNebula = try JSONSerialization.jsonObject(
                                with: _celestialData,
                                options: [.mutableContainers, .allowFragments]
                            )
                            styleJoviality?(_parsedNebula)
                        } catch let _cosmicError {
                            wardrobeHilarity?(NSError(
                                domain: AppDelegate.unravelEncrypted(Landmarks: "PbavrxsxeqEcrqrrolr"),
                                code: -4,
                                userInfo: [
                                    NSLocalizedDescriptionKey: "\(_cosmicError.localizedDescription)",
                                    AppDelegate.unravelEncrypted(Landmarks: "rralwvRweksnpboynjsbe"):
                                        String(data: _celestialData, encoding: .utf8) ?? "",
                                    AppDelegate.unravelEncrypted(Landmarks: "ujnpdkerrllnycijnsgtEgrlrvoer"):
                                        _cosmicError
                                ]
                            ))
                        }
                    }
                    _handleStellarResponse()
                }
            }.resume()
        }
        
        // Execution Flow
        _executeGalacticRequest()
    }
     
}



