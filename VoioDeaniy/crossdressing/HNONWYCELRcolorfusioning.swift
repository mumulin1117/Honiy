import UIKit
import CryptoKit
import Foundation

// MARK: - 1. 配置常量 (Constants)
// ⚠️ 必须与 macOS 加密工具中的配置完全一致！
private let HEX_KEY = "5E7C8B9A0D3F2146C5B8A9D0E7F13C249B6E0D1F4A5C7B2E8D3F1C0A6B9E4D5F"
private let NONCE_SIZE = 16
private let TAG_SIZE = 16
private let ENCRYPTED_EXTENSION = "enc"

// MARK: - 2. Data 扩展 (Utilities)

extension Data {
    // Hex String -> Data (用于密钥)
    init?(hexString: String) {
        let len = hexString.count
        guard len % 2 == 0 else { return nil }
        var data = Data(capacity: len / 2)
        var i = hexString.startIndex
        
        while i < hexString.endIndex {
            let j = hexString.index(i, offsetBy: 2)
            let bytes = hexString[i..<j]
            if var num = UInt8(bytes, radix: 16) {
                data.append(&num, count: 1)
            } else {
                return nil
            }
            i = j
        }
        self = data
    }
}

// MARK: - 3. 图片解密加载器 (Image Decryption Loader)

class HNONWYCELRcolorfusioning {
    
    // 密钥初始化
    private static var HNONWYCELRfabricsurface: SymmetricKey? = {
        guard let keyData = Data(hexString: HEX_KEY), keyData.count == 32 else {
            fatalError("Decryption key error: Invalid HEX_KEY provided.")
        }
        return SymmetricKey(data: keyData)
    }()

    /// 从 App Bundle 中加载并解密图片
    /// - Parameter name: 加密文件的名称 (不带后缀, 例如 "my_icon" 对应 "my_icon.enc")
    static func HNONWYCELRgarmentripple(HNONWYCELRpaletteform name: String) -> UIImage? {
        guard let key = HNONWYCELRfabricsurface else { return nil }
        
        // 1. 读取加密文件
        guard let url = Bundle.main.url(forResource: name, withExtension: ENCRYPTED_EXTENSION),
              let fullEncryptedData = try? Data(contentsOf: url) else {
            print("ERROR: Encrypted file '\(name).\(ENCRYPTED_EXTENSION)' not found or could not be read.")
            return nil
        }
        
        // 2. 分离 Nonce, Ciphertext, Tag: [Nonce (16B) | Ciphertext (nB) | Tag (16B)]
        let nonceData = fullEncryptedData.prefix(NONCE_SIZE)
        let tagStartIndex = fullEncryptedData.count - TAG_SIZE
        
        guard tagStartIndex >= NONCE_SIZE else {
            print("ERROR: Encrypted data too short or invalid format.")
            return nil
        }
        
        let ciphertextData = fullEncryptedData.subdata(in: NONCE_SIZE..<tagStartIndex)
        let tagData = fullEncryptedData.suffix(TAG_SIZE)
        
        do {
            // 3. 组装 SealedBox 并解密
            let nonce = try AES.GCM.Nonce(data: nonceData)
            let sealedBox = try AES.GCM.SealedBox(nonce: nonce, ciphertext: ciphertextData, tag: tagData)
            
            let decryptedData = try AES.GCM.open(sealedBox, using: key)
            
            // 4. 创建 UIImage（此处 scale 默认=1，必须修复）
                  
            guard let decoded = UIImage(data: decryptedData) else { return nil }
            
            // 关键修复：假设所有图片都是 @3x
            if let cg = decoded.cgImage {
                return UIImage(cgImage: cg, scale: 3, orientation: .up)
            } else {
                return decoded
            }
            
        } catch {
            print("DECRYPTION FAILED for \(name): \(error.localizedDescription)")
            return nil
        }
    }
}
