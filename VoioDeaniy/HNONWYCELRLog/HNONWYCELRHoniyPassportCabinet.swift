import UIKit

struct HNONWYCELRHoniyPassportArchive: Codable {
    let HNONWYCELRhoniyEmail: String
    var HNONWYCELRhoniyPassword: String
    var HNONWYCELRhoniyDisplayName: String
    var HNONWYCELRhoniyGender: String
    var HNONWYCELRhoniyBirthMark: String
    var HNONWYCELRhoniyAvatarRoute: String
    var HNONWYCELRhoniyAppleCode: String
    var HNONWYCELRhoniyExplorer: String
}

struct HNONWYCELRHoniyPassportDraft {
    var HNONWYCELRhoniyEmail = ""
    var HNONWYCELRhoniyPassword = ""
    var HNONWYCELRhoniyDisplayName = ""
    var HNONWYCELRhoniyGender = ""
    var HNONWYCELRhoniyBirthMark = ""
    var HNONWYCELRhoniyAppleCode = ""
}

enum HNONWYCELRHoniyPassportCabinet {
    static let HNONWYCELRhoniyClosetKey = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "HxNxOxNxWxYxCxExLxRxhxoxnxixyxCxlxoxsxextxKxexy")
    static let HNONWYCELRhoniyCurrentKey = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "HxNxOxNxWxYxCxExLxRxhxoxnxixyxCxuxrxrxexnxtxKxexy")

    static func HNONWYCELRhoniyNormalizedTrail(_ HNONWYCELRhoniyEmail: String) -> String {
        HNONWYCELRhoniyEmail.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }

    static func HNONWYCELRhoniyPassport(_ HNONWYCELRhoniyEmail: String) -> HNONWYCELRHoniyPassportArchive? {
        HNONWYCELRhoniyCloset()[HNONWYCELRhoniyNormalizedTrail(HNONWYCELRhoniyEmail)]
    }

    static func HNONWYCELRhoniyCurrentPassport() -> HNONWYCELRHoniyPassportArchive? {
        guard let HNONWYCELRhoniyEmail = UserDefaults.standard.string(forKey: HNONWYCELRhoniyCurrentKey) else {
            return nil
        }
        return HNONWYCELRhoniyPassport(HNONWYCELRhoniyEmail)
    }

    static func HNONWYCELRhoniyRememberPassport(_ HNONWYCELRhoniyArchive: HNONWYCELRHoniyPassportArchive, HNONWYCELRhoniyCurrentGlow: Bool) {
        var HNONWYCELRhoniyBox = HNONWYCELRhoniyCloset()
        HNONWYCELRhoniyBox[HNONWYCELRhoniyNormalizedTrail(HNONWYCELRhoniyArchive.HNONWYCELRhoniyEmail)] = HNONWYCELRhoniyArchive
        if let HNONWYCELRhoniyData = try? JSONEncoder().encode(HNONWYCELRhoniyBox) {
            UserDefaults.standard.set(HNONWYCELRhoniyData, forKey: HNONWYCELRhoniyClosetKey)
        }
        if HNONWYCELRhoniyCurrentGlow {
            UserDefaults.standard.set(HNONWYCELRhoniyArchive.HNONWYCELRhoniyEmail, forKey: HNONWYCELRhoniyCurrentKey)
        }
    }

    static func HNONWYCELRhoniyStoreAvatar(_ HNONWYCELRhoniyImage: UIImage, HNONWYCELRhoniyEmail: String) -> String {
        guard let HNONWYCELRhoniyData = HNONWYCELRhoniyImage.jpegData(compressionQuality: 0.86) else {
            return ""
        }
        let HNONWYCELRhoniyFile = HNONWYCELRhoniyAvatarRoom().appendingPathComponent(HNONWYCELRhoniyAvatarSlug(HNONWYCELRhoniyEmail) + AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: ".xjxpxg"))
        try? HNONWYCELRhoniyData.write(to: HNONWYCELRhoniyFile, options: .atomic)
        return HNONWYCELRhoniyFile.path
    }

    static func HNONWYCELRhoniyAvatarFrame(_ HNONWYCELRhoniyArchive: HNONWYCELRHoniyPassportArchive) -> UIImage? {
        guard !HNONWYCELRhoniyArchive.HNONWYCELRhoniyAvatarRoute.isEmpty else {
            return nil
        }
        return UIImage(contentsOfFile: HNONWYCELRhoniyArchive.HNONWYCELRhoniyAvatarRoute)
    }

    private static func HNONWYCELRhoniyCloset() -> [String: HNONWYCELRHoniyPassportArchive] {
        guard let HNONWYCELRhoniyData = UserDefaults.standard.data(forKey: HNONWYCELRhoniyClosetKey),
              let HNONWYCELRhoniyCloset = try? JSONDecoder().decode([String: HNONWYCELRHoniyPassportArchive].self, from: HNONWYCELRhoniyData) else {
            return [:]
        }
        return HNONWYCELRhoniyCloset
    }

    private static func HNONWYCELRhoniyAvatarRoom() -> URL {
        let HNONWYCELRhoniyShelfName = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "HxNxOxNxWxYxCxExLxRxHxoxnxixyxPxaxsxsxpxoxrxtxSxhxexlxf")
        let HNONWYCELRhoniyFolder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent(HNONWYCELRhoniyShelfName, isDirectory: true) ?? URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(HNONWYCELRhoniyShelfName, isDirectory: true)
        if !FileManager.default.fileExists(atPath: HNONWYCELRhoniyFolder.path) {
            try? FileManager.default.createDirectory(at: HNONWYCELRhoniyFolder, withIntermediateDirectories: true, attributes: nil)
        }
        return HNONWYCELRhoniyFolder
    }

    private static func HNONWYCELRhoniyAvatarSlug(_ HNONWYCELRhoniyValue: String) -> String {
        let HNONWYCELRhoniyTrail = HNONWYCELRhoniyNormalizedTrail(HNONWYCELRhoniyValue)
        let HNONWYCELRhoniySafe = HNONWYCELRhoniyTrail.replacingOccurrences(of: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "[x^xAx-xZxax-xzx0x-x9x]"), with: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "_"), options: .regularExpression)
        return HNONWYCELRhoniySafe.isEmpty ? UUID().uuidString : HNONWYCELRhoniySafe
    }
}
