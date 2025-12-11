import Foundation
import CryptoKit

struct AESUtil {
    static func encrypt(data: Data, key: Data, iv: Data) -> Data? {
        let keySym = SymmetricKey(data: key)
        let sealedBox = try? AES.GCM.seal(data, using: keySym, nonce: AES.GCM.Nonce(data: iv))
        return sealedBox?.combined
    }
}

func readArguments() -> (input: String, output: String, key: String, iv: String)? {
    let args = CommandLine.arguments
    guard
        let inputIndex = args.firstIndex(of: "--input"),
        let outputIndex = args.firstIndex(of: "--output"),
        let keyIndex = args.firstIndex(of: "--key"),
        let ivIndex = args.firstIndex(of: "--iv"),
        args.count > inputIndex+1,
        args.count > outputIndex+1,
        args.count > keyIndex+1,
        args.count > ivIndex+1
    else {
        print("❌ 参数错误")
        return nil
    }
    return (
        input: args[inputIndex + 1],
        output: args[outputIndex + 1],
        key: args[keyIndex + 1],
        iv: args[ivIndex + 1]
    )
}

guard let params = readArguments() else {
    exit(1)
}

let inputURL = URL(fileURLWithPath: params.input)
let outputURL = URL(fileURLWithPath: params.output)

try? FileManager.default.createDirectory(at: outputURL, withIntermediateDirectories: true)

let keyData = Data(params.key.utf8)
let ivData = Data(params.iv.utf8)

let fm = FileManager.default

if let files = try? fm.contentsOfDirectory(at: inputURL, includingPropertiesForKeys: nil) {
    for file in files {
        let fileData = try! Data(contentsOf: file)
        guard let encrypted = AESUtil.encrypt(data: fileData, key: keyData, iv: ivData) else {
            print("❌ 加密失败: \(file.lastPathComponent)")
            continue
        }

        let outPath = outputURL.appendingPathComponent(file.lastPathComponent + ".enc")
        try! encrypted.write(to: outPath)
        print("🔒 已加密: \(file.lastPathComponent)")
    }
}

print("🎉 所有图片已完成加密输出！")
