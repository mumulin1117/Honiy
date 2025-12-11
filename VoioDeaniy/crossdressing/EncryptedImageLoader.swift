//
//  EncryptedImageLoader.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/12/10.
//

import UIKit
import CryptoKit

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

class EncryptedImageLoader {
    
    // 密钥初始化 (使用懒加载和检查，确保密钥正确性)
    private static var decryptionKey: SymmetricKey? = {
        guard let keyData = Data(hexString: HEX_KEY), keyData.count == 32 else {
            fatalError("Decryption key error: Invalid HEX_KEY provided.")
        }
        return SymmetricKey(data: keyData)
    }()

    /// 从 App Bundle 中加载并解密图片
    static func load(named name: String) -> UIImage? {
        guard let key = decryptionKey else { return nil }
        
        // 1. 读取加密文件
        guard let url = Bundle.main.url(forResource: name, withExtension: ENCRYPTED_EXTENSION),
              let fullEncryptedData = try? Data(contentsOf: url) else {
            print("ERROR: Encrypted file '\(name).\(ENCRYPTED_EXTENSION)' not found.")
            return nil
        }
        
        // 2. 分离 Nonce, Ciphertext, Tag
        let nonceData = fullEncryptedData.prefix(NONCE_SIZE)
        let tagStartIndex = fullEncryptedData.count - TAG_SIZE
        
        guard tagStartIndex >= NONCE_SIZE else {
            print("ERROR: Encrypted data too short or invalid format.")
            return nil
        }
        
        let ciphertextData = fullEncryptedData.subdata(in: NONCE_SIZE..<tagStartIndex)
        let tagData = fullEncryptedData.suffix(TAG_SIZE)
        
        guard nonceData.count == NONCE_SIZE, tagData.count == TAG_SIZE else {
            print("ERROR: Nonce or Tag size mismatch with configuration.")
            return nil
        }
        
        do {
            // 3. 组装 SealedBox 并解密
            let nonce = try AES.GCM.Nonce(data: nonceData)
            let sealedBox = try AES.GCM.SealedBox(nonce: nonce, ciphertext: ciphertextData, tag: tagData)
            
            let decryptedData = try AES.GCM.open(sealedBox, using: key)
            
            // 4. 转换为 UIImage
            return UIImage(data: decryptedData)
            
        } catch {
            print("DECRYPTION FAILED for \(name): \(error.localizedDescription)")
            return nil
        }
    }
}
