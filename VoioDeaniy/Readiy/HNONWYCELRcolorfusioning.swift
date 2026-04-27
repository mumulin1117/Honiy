import UIKit
import CryptoKit
import Foundation


private let HNONWYCELRHEX_KEY = "5E7C8B9A0D3F2146C5B8A9D0E7F13C249B6E0D1F4A5C7B2E8D3F1C0A6B9E4D5F"
private let HNONWYCELRNONCE_SIZE = 16
private let HNONWYCELRTAG_SIZE = 16
private let ENCRYPTED_EXTENSION = "enc"



extension Data {
   
    init?(hexString: String) {
        let HNONWYCELRlen = hexString.count
        guard HNONWYCELRlen % 2 == 0 else { return nil }
        var HNONWYCELRdata = Data(capacity: HNONWYCELRlen / 2)
        var HNONWYCELRi = hexString.startIndex
        
        while HNONWYCELRi < hexString.endIndex {
            let HNONWYCELRj = hexString.index(HNONWYCELRi, offsetBy: 2)
            let bytes = hexString[HNONWYCELRi..<HNONWYCELRj]
            if var num = UInt8(bytes, radix: 16) {
                HNONWYCELRdata.append(&num, count: 1)
            } else {
                return nil
            }
            HNONWYCELRi = HNONWYCELRj
        }
        self = HNONWYCELRdata
    }
}



class HNONWYCELRcolorfusioning {
    
   
    private static var HNONWYCELRfabricsurface: SymmetricKey? = {
        guard let HNONWYCELRkeyData = Data(hexString: HNONWYCELRHEX_KEY), HNONWYCELRkeyData.count == 32 else {
            fatalError("Decryption key error: Invalid HEX_KEY provided.")
        }
        return SymmetricKey(data: HNONWYCELRkeyData)
    }()

   
    static func HNONWYCELRgarmentripple(HNONWYCELRpaletteform name: String) -> UIImage? {
        guard let HNONWYCELRkey = HNONWYCELRfabricsurface else { return nil }
        
     
        guard let HNONWYCELRurl = Bundle.main.url(forResource: name, withExtension: ENCRYPTED_EXTENSION),
              let fullEncryptedData = try? Data(contentsOf: HNONWYCELRurl) else {
          
            return nil
        }
        
     
        let HNONWYCELRnonceData = fullEncryptedData.prefix(HNONWYCELRNONCE_SIZE)
        let HNONWYCELRtagStartIndex = fullEncryptedData.count - HNONWYCELRTAG_SIZE
        
        guard HNONWYCELRtagStartIndex >= HNONWYCELRNONCE_SIZE else {
            
            return nil
        }
        
        let HNONWYCELRciphertextData = fullEncryptedData.subdata(in: HNONWYCELRNONCE_SIZE..<HNONWYCELRtagStartIndex)
        let HNONWYCELRtagData = fullEncryptedData.suffix(HNONWYCELRTAG_SIZE)
        
        do {
        
            let HNONWYCELRnonce = try AES.GCM.Nonce(data: HNONWYCELRnonceData)
            let HNONWYCELRsealedBox = try AES.GCM.SealedBox(nonce: HNONWYCELRnonce, ciphertext: HNONWYCELRciphertextData, tag: HNONWYCELRtagData)
            
            let HNONWYCELRdecryptedData = try AES.GCM.open(HNONWYCELRsealedBox, using: HNONWYCELRkey)
            
         
                  
            guard let HNONWYCELRdecoded = UIImage(data: HNONWYCELRdecryptedData) else { return nil }
            
          
            if let HNONWYCELRcg = HNONWYCELRdecoded.cgImage {
                return UIImage(cgImage: HNONWYCELRcg, scale: 3, orientation: .up)
            } else {
                return HNONWYCELRdecoded
            }
            
        } catch {
           
            return nil
        }
    }
}
