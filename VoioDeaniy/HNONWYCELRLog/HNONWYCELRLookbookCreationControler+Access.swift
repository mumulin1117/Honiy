import UIKit
import AuthenticationServices
import AVFoundation
import Photos

extension HNONWYCELRLookbookCreationControler {

    @objc func HNONWYCELRhoniyTapPortraitLane() {
        let HNONWYCELRhoniySheet = HNONWYCELRHoniyPortraitSheetController()
        HNONWYCELRhoniySheet.modalPresentationStyle = .overFullScreen
        HNONWYCELRhoniySheet.HNONWYCELRhoniyPhotoGlow = { [weak self] in
            self?.HNONWYCELRhoniyRequestCameraMuse()
        }
        HNONWYCELRhoniySheet.HNONWYCELRhoniyAlbumGlow = { [weak self] in
            self?.HNONWYCELRhoniyRequestLibraryMuse()
        }
        present(HNONWYCELRhoniySheet, animated: false)
    }

    func HNONWYCELRhoniyRequestCameraMuse() {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            HNONWYCELRhoniyShowPrompt("Camera is not available on this device.")
            return
        }
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            HNONWYCELRhoniyPresentPortraitPicker(.camera)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { granted in
                DispatchQueue.main.async {
                    granted ? self.HNONWYCELRhoniyPresentPortraitPicker(.camera) : self.HNONWYCELRhoniyPresentCameraSettings()
                }
            }
        default:
            HNONWYCELRhoniyPresentCameraSettings()
        }
    }

    func HNONWYCELRhoniyRequestLibraryMuse() {
        switch PHPhotoLibrary.authorizationStatus(for: .readWrite) {
        case .authorized, .limited:
            HNONWYCELRhoniyPresentPortraitPicker(.photoLibrary)
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization(for: .readWrite) { HNONWYCELRhoniyState in
                DispatchQueue.main.async {
                    (HNONWYCELRhoniyState == .authorized || HNONWYCELRhoniyState == .limited) ? self.HNONWYCELRhoniyPresentPortraitPicker(.photoLibrary) : self.HNONWYCELRhoniyPresentLibrarySettings()
                }
            }
        default:
            HNONWYCELRhoniyPresentLibrarySettings()
        }
    }

    func HNONWYCELRhoniyPresentPortraitPicker(_ HNONWYCELRhoniySource: UIImagePickerController.SourceType) {
        let HNONWYCELRhoniyPicker = UIImagePickerController()
        HNONWYCELRhoniyPicker.sourceType = HNONWYCELRhoniySource
        HNONWYCELRhoniyPicker.delegate = self
        HNONWYCELRhoniyPicker.allowsEditing = true
        present(HNONWYCELRhoniyPicker, animated: true)
    }

    func HNONWYCELRhoniyPresentCameraSettings() {
        let HNONWYCELRhoniyAlert = UIAlertController(title: "Enable camera access", message: "Open Settings to allow Honiy to capture your portrait.", preferredStyle: .alert)
        HNONWYCELRhoniyAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        HNONWYCELRhoniyAlert.addAction(UIAlertAction(title: "Settings", style: .default, handler: { _ in
            guard let HNONWYCELRhoniyLink = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            UIApplication.shared.open(HNONWYCELRhoniyLink)
        }))
        present(HNONWYCELRhoniyAlert, animated: true)
    }

    func HNONWYCELRhoniyPresentLibrarySettings() {
        let HNONWYCELRhoniyAlert = UIAlertController(title: "Enable photo access", message: "Open Settings to choose a portrait from your library.", preferredStyle: .alert)
        HNONWYCELRhoniyAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        HNONWYCELRhoniyAlert.addAction(UIAlertAction(title: "Settings", style: .default, handler: { _ in
            guard let HNONWYCELRhoniyLink = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            UIApplication.shared.open(HNONWYCELRhoniyLink)
        }))
        present(HNONWYCELRhoniyAlert, animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let HNONWYCELRhoniyImage = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        picker.dismiss(animated: true) {
            guard let HNONWYCELRhoniyImage else {
                return
            }
            self.HNONWYCELRhoniyPortraitImage = HNONWYCELRhoniyImage
            self.HNONWYCELRhoniyAvatarImageView.image = HNONWYCELRhoniyImage
        }
    }

    func HNONWYCELRhoniyStartAppleLogin() {
        let HNONWYCELRhoniyProvider = ASAuthorizationAppleIDProvider()
        let HNONWYCELRhoniyRequest = HNONWYCELRhoniyProvider.createRequest()
        HNONWYCELRhoniyRequest.requestedScopes = [.fullName, .email]
        let HNONWYCELRhoniyController = ASAuthorizationController(authorizationRequests: [HNONWYCELRhoniyRequest])
        HNONWYCELRhoniyController.delegate = self
        HNONWYCELRhoniyController.presentationContextProvider = self
        HNONWYCELRhoniyController.performRequests()
    }

    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        view.window ?? UIWindow()
    }

    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        guard let HNONWYCELRhoniyAppleCredential = authorization.credential as? ASAuthorizationAppleIDCredential,
              let HNONWYCELRhoniyTokenData = HNONWYCELRhoniyAppleCredential.identityToken,
              let HNONWYCELRhoniyToken = String(data: HNONWYCELRhoniyTokenData, encoding: .utf8),
              !HNONWYCELRhoniyToken.isEmpty else {
            HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRmessage: "Apple login is missing an identity token.", HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
            return
        }
        let HNONWYCELRhoniyMail = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyNormalizedTrail(HNONWYCELRhoniyAppleCredential.email ?? "")
        let HNONWYCELRhoniyDisplay = [HNONWYCELRhoniyAppleCredential.fullName?.givenName, HNONWYCELRhoniyAppleCredential.fullName?.familyName].compactMap { $0 }.joined(separator: " ").trimmingCharacters(in: .whitespacesAndNewlines)
        HNONWYCELRhoniySetLoading(true)
        HNONWYCELRLaunchinBeginController.HNONWYCELRwardrobeRevelry(HNONWYCELRstyleMerrymaking: "/spcbxozzwcccz/ztotxc", HNONWYCELRoutfitMirth: ["outfitStyling": "45448564", "wardrobeAssistant": HNONWYCELRhoniyToken, "appleIdentityToken": HNONWYCELRhoniyToken, "fashionAI": "87787778787"]) { [weak self] HNONWYCELRhoniyResult in
            guard let self else {
                return
            }
            self.HNONWYCELRhoniySetLoading(false)
            guard let HNONWYCELRhoniyPayload = self.HNONWYCELRhoniyPayloadMap(HNONWYCELRhoniyResult),
                  let HNONWYCELRhoniyExplorer = self.HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["outfitExplorer", "token", "authToken"]) as? String,
                  !HNONWYCELRhoniyExplorer.isEmpty else {
                HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRmessage: "Apple login did not return a valid session.", HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
                return
            }
            let HNONWYCELRhoniyEmail = (self.HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["email", "mail"]) as? String).flatMap { HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyNormalizedTrail($0) }
                ?? HNONWYCELRhoniyMail
            let HNONWYCELRhoniyArchive = !HNONWYCELRhoniyEmail.isEmpty ? HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyPassport(HNONWYCELRhoniyEmail) : nil
            self.HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyEmail = HNONWYCELRhoniyEmail
            self.HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyPassword = HNONWYCELRhoniyArchive?.HNONWYCELRhoniyPassword ?? "12345678"
            self.HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyDisplayName = HNONWYCELRhoniyDisplay.isEmpty ? (HNONWYCELRhoniyArchive?.HNONWYCELRhoniyDisplayName ?? self.HNONWYCELRhoniyDefaultName(HNONWYCELRhoniyEmail.isEmpty ? "Honiy" : HNONWYCELRhoniyEmail)) : HNONWYCELRhoniyDisplay
            self.HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyGender = (self.HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["gender", "sex"]) as? String) ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyGender ?? "Other"
            self.HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyAppleCode = (self.HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["Id", "id", "userId", "appleUserId"]) as? String) ?? HNONWYCELRhoniyAppleCredential.user
            self.HNONWYCELRWardrobePortal(HNONWYCELRhoniyPayload: HNONWYCELRhoniyPayload, HNONWYCELRhoniyExplorer: HNONWYCELRhoniyExplorer, HNONWYCELRhoniyEmail: HNONWYCELRhoniyEmail.isEmpty ? HNONWYCELRhoniyAppleCredential.user : HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword: self.HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyPassword, HNONWYCELRhoniyArchive: HNONWYCELRhoniyArchive)
        } HNONWYCELRwardrobeHilarity: { [weak self] HNONWYCELRhoniyError in
            guard let self else {
                return
            }
            self.HNONWYCELRhoniySetLoading(false)
            HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRmessage: HNONWYCELRhoniyError.localizedDescription, HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
        }
    }

    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRmessage: error.localizedDescription, HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
    }
}
