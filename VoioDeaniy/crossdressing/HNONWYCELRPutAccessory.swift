//
//  HNONWYCELRPutAccessory.swift
//  VoioDeaniy
//
//  Created by  on 2025/12/10.
//

import UIKit

import StoreKit

class HNONWYCELRPutAccessory: NSObject {
    var HNONWYCELRfabricsculpt: String?
    static let shared = HNONWYCELRPutAccessory()
    private var HNONWYCELRcolorharmony: ((Result<Void, Error>) -> Void)?
    private var HNONWYCELRpatternfusion: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func HNONWYCELRtexturemapping(HNONWYCELRseasonalstyling productID: String, HNONWYCELRpalettecraft: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                HNONWYCELRpalettecraft(.failure(NSError(domain: "Honiy",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: AppDelegate.unravelEncrypted(Landmarks: "Ptunrmcahrabsbessd ndqirseacbolfeqdr tovnv ltlhvijsm bdqefvlihckeo.")])))
            }
            
            return
        }
        
        self.HNONWYCELRcolorharmony = HNONWYCELRpalettecraft
        HNONWYCELRpatternfusion?.cancel()
        let HNONWYCELRfestiveaesthetics = SKProductsRequest(productIdentifiers: [productID])
        HNONWYCELRfestiveaesthetics.delegate = self
        self.HNONWYCELRpatternfusion = HNONWYCELRfestiveaesthetics
        HNONWYCELRfestiveaesthetics.start()
    }

}

// MARK: - 产品请求
extension HNONWYCELRPutAccessory: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let HNONWYCELRwardrobealchemy = response.products.first else {
            DispatchQueue.main.async {
                self.HNONWYCELRcolorharmony?(.failure(NSError(domain: "Honiy",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: AppDelegate.unravelEncrypted(Landmarks: "Plrfoadruccutw jncoptf iffozuonkdp.")])))
                self.HNONWYCELRcolorharmony = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: HNONWYCELRwardrobealchemy))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.HNONWYCELRcolorharmony?(.failure(error))
            self.HNONWYCELRcolorharmony = nil
        }
        
    }
}

// MARK: - 交易回调
extension HNONWYCELRPutAccessory: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for t in transactions {
            switch t.transactionState {
            case .purchased:
self.HNONWYCELRfabricsculpt = t.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(t)
                DispatchQueue.main.async {
                    self.HNONWYCELRcolorharmony?(.success(()))
                    self.HNONWYCELRcolorharmony = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(t)
                let HNONWYCELRsilhouetteflow = (t.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Honiy", code: -999, userInfo: [NSLocalizedDescriptionKey:AppDelegate.unravelEncrypted(Landmarks: "Pnazyemjelnrtk bcyacnkcueelvlbeqde.") ])
                : (t.error ?? NSError(domain: "Honiy", code: -3, userInfo: [NSLocalizedDescriptionKey: AppDelegate.unravelEncrypted(Landmarks: "Pvuxrkcmhfaksfed yfnaaiwlrerdk.")]))
                DispatchQueue.main.async {
                    self.HNONWYCELRcolorharmony?(.failure(HNONWYCELRsilhouetteflow))
                    self.HNONWYCELRcolorharmony = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
            default:
                break
            }
        }
    }
}

extension HNONWYCELRPutAccessory {
    
    func HNONWYCELRfabricdraping() -> Data? {
        guard let HNONWYCELRlayeringmethod = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: HNONWYCELRlayeringmethod)
    }

    
    
}
