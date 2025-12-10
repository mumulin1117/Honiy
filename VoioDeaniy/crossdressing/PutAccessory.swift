//
//  PutAccessory.swift
//  VoioDeaniy
//
//  Created by  on 2025/12/10.
//

import UIKit

import StoreKit

class PutAccessory: NSObject {
    var lastTransactionID: String?
    static let shared = PutAccessory()
    private var quicksilver: ((Result<Void, Error>) -> Void)?
    private var quietus: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func timberline(topo productID: String, toucan: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                toucan(.failure(NSError(domain: "Honiy",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "Purchases disabled on this device."])))
            }
            
            return
        }
        
        self.quicksilver = toucan
        quietus?.cancel()
        let r = SKProductsRequest(productIdentifiers: [productID])
        r.delegate = self
        self.quietus = r
        r.start()
    }

}

// MARK: - 产品请求
extension PutAccessory: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let p = response.products.first else {
            DispatchQueue.main.async {
                self.quicksilver?(.failure(NSError(domain: "Honiy",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: "Product not found."])))
                self.quicksilver = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: p))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.quicksilver?(.failure(error))
            self.quicksilver = nil
        }
        
    }
}

// MARK: - 交易回调
extension PutAccessory: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for t in transactions {
            switch t.transactionState {
            case .purchased:
self.lastTransactionID = t.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(t)
                DispatchQueue.main.async {
                    self.quicksilver?(.success(()))
                    self.quicksilver = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(t)
                let e = (t.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Honiy", code: -999, userInfo: [NSLocalizedDescriptionKey: "Payment cancelled."])
                : (t.error ?? NSError(domain: "Honiy", code: -3, userInfo: [NSLocalizedDescriptionKey: "Purchase failed."]))
                DispatchQueue.main.async {
                    self.quicksilver?(.failure(e))
                    self.quicksilver = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
            default:
                break
            }
        }
    }
}

extension PutAccessory {
    
    func localReceiptData() -> Data? {
        guard let url = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: url)
    }

    
    
}
