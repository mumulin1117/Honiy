import UIKit

extension HNONWYCELRLookbookCreationControler {

    func HNONWYCELRhoniyBindPortal() {
        [HNONWYCELRhoniyLoginEmailDock.textField, HNONWYCELRhoniyLoginPasswordDock.textField, HNONWYCELRhoniyPassportNameDock.textField, HNONWYCELRhoniyPassportEmailDock.textField, HNONWYCELRhoniyPassportPasswordDock.textField].forEach {
            $0.delegate = self
            $0.autocorrectionType = .no
            $0.autocapitalizationType = .none
        }
        HNONWYCELRhoniyLoginEmailDock.textField.keyboardType = .emailAddress
        HNONWYCELRhoniyPassportEmailDock.textField.keyboardType = .emailAddress
        HNONWYCELRhoniyLoginEmailDock.textField.returnKeyType = .next
        HNONWYCELRhoniyLoginPasswordDock.textField.returnKeyType = .go
        HNONWYCELRhoniyPassportNameDock.textField.returnKeyType = .next
        HNONWYCELRhoniyPassportEmailDock.textField.returnKeyType = .next
        HNONWYCELRhoniyPassportPasswordDock.textField.returnKeyType = .next
        HNONWYCELRhoniyQuickLoginButton.addTarget(self, action: #selector(HNONWYCELRhoniyOpenEmailRunway), for: .touchUpInside)
        HNONWYCELRhoniySignupButton.addTarget(self, action: #selector(HNONWYCELRhoniyOpenPassportMuse), for: .touchUpInside)
        HNONWYCELRhoniyAppleButton.addTarget(self, action: #selector(HNONWYCELRhoniyAppleGesture), for: .touchUpInside)
        HNONWYCELRhoniyBackButton.addTarget(self, action: #selector(HNONWYCELRhoniyRetreatStage), for: .touchUpInside)
        HNONWYCELRhoniyLoginActionButton.addTarget(self, action: #selector(HNONWYCELRhoniyHandleEmailRunway), for: .touchUpInside)
        HNONWYCELRhoniyPassportNextButton.addTarget(self, action: #selector(HNONWYCELRhoniyAdvancePassportMuse), for: .touchUpInside)
        HNONWYCELRhoniyProfileEnterButton.addTarget(self, action: #selector(HNONWYCELRhoniyCompletePassport), for: .touchUpInside)
        HNONWYCELRhoniyAvatarShellButton.addTarget(self, action: #selector(HNONWYCELRhoniyTapPortraitLane), for: .touchUpInside)
        HNONWYCELRhoniyBirthPicker.addTarget(self, action: #selector(HNONWYCELRhoniyRefreshBirthMarkAction), for: .valueChanged)
        [HNONWYCELRhoniyGenderMuseButton, HNONWYCELRhoniyGenderFrostButton].enumerated().forEach {
            $0.element.tag = $0.offset
            $0.element.addTarget(self, action: #selector(HNONWYCELRhoniyPickGenderLane(_:)), for: .touchUpInside)
        }
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELRhoniyCheckButton, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELRhoniyCheckButton].forEach {
            $0.addTarget(self, action: #selector(HNONWYCELRhoniyFlipConsent), for: .touchUpInside)
        }
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELRhoniyTermsButton, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELRhoniyTermsButton].forEach {
            $0.tag = 45
            $0.addTarget(self, action: #selector(HNONWYCELRhoniyOpenPolicy(_:)), for: .touchUpInside)
        }
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELRhoniyPrivacyButton, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELRhoniyPrivacyButton].forEach {
            $0.tag = 55
            $0.addTarget(self, action: #selector(HNONWYCELRhoniyOpenPolicy(_:)), for: .touchUpInside)
        }
        let HNONWYCELRhoniyTapCurtain = UITapGestureRecognizer(target: self, action: #selector(HNONWYCELRhoniyDismissKeys))
        HNONWYCELRhoniyTapCurtain.cancelsTouchesInView = false
        view.addGestureRecognizer(HNONWYCELRhoniyTapCurtain)
        HNONWYCELRhoniyRefreshBirthMark()
        HNONWYCELRhoniyRefreshConsent()
    }

    func HNONWYCELRhoniySeedLocalPassport() {
        guard let HNONWYCELRhoniyArchive = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyCurrentPassport() else {
            return
        }
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyEmail = HNONWYCELRhoniyArchive.HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyPassword = HNONWYCELRhoniyArchive.HNONWYCELRhoniyPassword
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyDisplayName = HNONWYCELRhoniyArchive.HNONWYCELRhoniyDisplayName
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyGender = HNONWYCELRhoniyArchive.HNONWYCELRhoniyGender
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark = HNONWYCELRhoniyArchive.HNONWYCELRhoniyBirthMark
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyAppleCode = HNONWYCELRhoniyArchive.HNONWYCELRhoniyAppleCode
        HNONWYCELRhoniyLoginEmailDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyEmail
        HNONWYCELRhoniyLoginPasswordDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyPassword
        HNONWYCELRhoniyPassportNameDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyDisplayName
        HNONWYCELRhoniyPassportEmailDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportPasswordDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyPassword
        if let HNONWYCELRhoniyPortrait = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyAvatarFrame(HNONWYCELRhoniyArchive) {
            HNONWYCELRhoniyPortraitImage = HNONWYCELRhoniyPortrait
            HNONWYCELRhoniyAvatarImageView.image = HNONWYCELRhoniyPortrait
        }
        HNONWYCELRhoniyDressGenderLane(HNONWYCELRhoniyArchive.HNONWYCELRhoniyGender)
        HNONWYCELRhoniyRefreshBirthMark(HNONWYCELRhoniyArchive.HNONWYCELRhoniyBirthMark)
    }

    func HNONWYCELRhoniyRefreshConsent() {
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELRhoniyCheckButton, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELRhoniyCheckButton].forEach {
            $0.isSelected = HNONWYCELRhoniyConsentChoice
        }
    }

    func HNONWYCELRhoniyDressGenderLane(_ HNONWYCELRhoniyGender: String) {
        let HNONWYCELRhoniyTone = HNONWYCELRhoniyGender.lowercased() == "male" ? "Male" : "Female"
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyGender = HNONWYCELRhoniyTone
        let HNONWYCELRhoniyButtons = [HNONWYCELRhoniyGenderMuseButton: "Male", HNONWYCELRhoniyGenderFrostButton: "Female"]
        HNONWYCELRhoniyButtons.forEach { HNONWYCELRhoniyPair in
            let HNONWYCELRhoniyActive = HNONWYCELRhoniyPair.value == HNONWYCELRhoniyTone
            HNONWYCELRhoniyPair.key.backgroundColor = HNONWYCELRhoniyActive ? UIColor(red: 0.73, green: 1.0, blue: 0.43, alpha: 0.96) : UIColor.white.withAlphaComponent(0.92)
            HNONWYCELRhoniyPair.key.layer.borderColor = HNONWYCELRhoniyActive ? UIColor.black.withAlphaComponent(0.18).cgColor : UIColor.black.withAlphaComponent(0.08).cgColor
        }
    }

    func HNONWYCELRhoniyRefreshBirthMark(_ HNONWYCELRhoniyPreset: String? = nil) {
        let HNONWYCELRhoniyFormatter = DateFormatter()
        HNONWYCELRhoniyFormatter.locale = Locale(identifier: "en_US_POSIX")
        HNONWYCELRhoniyFormatter.dateFormat = "MMM yyyy"
        if let HNONWYCELRhoniyPreset, !HNONWYCELRhoniyPreset.isEmpty {
            let HNONWYCELRhoniyReader = DateFormatter()
            HNONWYCELRhoniyReader.locale = Locale(identifier: "en_US_POSIX")
            HNONWYCELRhoniyReader.dateFormat = "yyyy-MM"
            if let HNONWYCELRhoniyDate = HNONWYCELRhoniyReader.date(from: HNONWYCELRhoniyPreset) {
                HNONWYCELRhoniyBirthPicker.setDate(HNONWYCELRhoniyDate, animated: false)
            }
        }
        let HNONWYCELRhoniyShown = HNONWYCELRhoniyFormatter.string(from: HNONWYCELRhoniyBirthPicker.date)
        HNONWYCELRhoniyBirthValueButton.setTitle(HNONWYCELRhoniyShown, for: .normal)
        let HNONWYCELRhoniyWriter = DateFormatter()
        HNONWYCELRhoniyWriter.locale = Locale(identifier: "en_US_POSIX")
        HNONWYCELRhoniyWriter.dateFormat = "yyyy-MM"
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark = HNONWYCELRhoniyWriter.string(from: HNONWYCELRhoniyBirthPicker.date)
    }

    @objc func HNONWYCELRhoniyRefreshBirthMarkAction() {
        HNONWYCELRhoniyRefreshBirthMark()
    }

    @objc func HNONWYCELRhoniyDismissKeys() {
        view.endEditing(true)
    }

    @objc func HNONWYCELRhoniyFocusBirthPanel() {
        let HNONWYCELRhoniyFrame = HNONWYCELRhoniyBirthPanel.convert(HNONWYCELRhoniyBirthPanel.bounds, to: HNONWYCELRhoniyScrollView)
        HNONWYCELRhoniyScrollView.scrollRectToVisible(HNONWYCELRhoniyFrame.insetBy(dx: 0, dy: -HNONWYCELRhoniyScaleHeight(18)), animated: true)
    }

    @objc func HNONWYCELRhoniyOpenEmailRunway() {
        HNONWYCELRhoniyRoute = .HNONWYCELRquickGlow
        HNONWYCELRhoniyShiftStage(.HNONWYCELRemailRunway, animated: true)
    }

    @objc func HNONWYCELRhoniyOpenPassportMuse() {
        HNONWYCELRhoniyRoute = .HNONWYCELRsignupGlow
        if HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyDisplayName.isEmpty {
            HNONWYCELRhoniyPassportNameDock.textField.text = nil
        }
        HNONWYCELRhoniyPassportEmailDock.textField.text = HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportPasswordDock.textField.text = HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyPassword
        HNONWYCELRhoniyShiftStage(.HNONWYCELRpassportMuse, animated: true)
    }

    @objc func HNONWYCELRhoniyAppleGesture() {
        HNONWYCELRhoniyStartAppleLogin()
    }

    @objc func HNONWYCELRhoniyRetreatStage() {
        view.endEditing(true)
        switch HNONWYCELRhoniyStage {
        case .HNONWYCELRemailRunway:
            HNONWYCELRhoniyShiftStage(.HNONWYCELRwelcomeGlow, animated: true)
        case .HNONWYCELRpassportMuse:
            let HNONWYCELRhoniyFallback: HNONWYCELRHoniyPortalStage = HNONWYCELRhoniyRoute == .HNONWYCELRfirstMuse ? .HNONWYCELRemailRunway : .HNONWYCELRwelcomeGlow
            HNONWYCELRhoniyShiftStage(HNONWYCELRhoniyFallback, animated: true)
        case .HNONWYCELRprofileVerse:
            HNONWYCELRhoniyShiftStage(.HNONWYCELRpassportMuse, animated: true)
        case .HNONWYCELRwelcomeGlow:
            break
        }
    }

    @objc func HNONWYCELRhoniyFlipConsent() {
        HNONWYCELRhoniyConsentChoice.toggle()
        HNONWYCELRhoniyRefreshConsent()
    }

    @objc func HNONWYCELRhoniyOpenPolicy(_ HNONWYCELRhoniySender: UIButton) {
        let HNONWYCELRhoniyRoute = HNONWYCELRhoniySender.tag == 45 ? HNONWYCELRAtfitFryer.HNONWYCELRwardrobeFan : HNONWYCELRAtfitFryer.HNONWYCELRstyleCompressor
        let HNONWYCELRhoniySheet = HNONWYCELRWardrobeVatontroller(HNONWYCELRstyleMotor: HNONWYCELRhoniyRoute.HNONWYCELRwardrobeSpout(HNONWYCELRNozzle: ""))
        HNONWYCELRhoniySheet.HNONWYCELRoutfitShroud = true
        HNONWYCELRhoniySheet.modalPresentationStyle = .fullScreen
        present(HNONWYCELRhoniySheet, animated: true)
    }

    @objc func HNONWYCELRhoniyPickGenderLane(_ HNONWYCELRhoniySender: UIButton) {
        let HNONWYCELRhoniyGender = ["Male", "Female"][HNONWYCELRhoniySender.tag]
        HNONWYCELRhoniyDressGenderLane(HNONWYCELRhoniyGender)
    }

    @objc func HNONWYCELRhoniyHandleEmailRunway() {
        view.endEditing(true)
        let HNONWYCELRhoniyEmail = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyNormalizedTrail(HNONWYCELRhoniyLoginEmailDock.textField.text ?? "")
        let HNONWYCELRhoniyPassword = HNONWYCELRhoniyLoginPasswordDock.textField.text ?? ""
        guard HNONWYCELRhoniyValidateEmailRunway(HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword) else {
            return
        }
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyEmail = HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyPassword = HNONWYCELRhoniyPassword
        let HNONWYCELRhoniyKnownMuse = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyPassport(HNONWYCELRhoniyEmail)
        let HNONWYCELRhoniyLabGlow = HNONWYCELRhoniyEmail == "honiy@gmail.com" && HNONWYCELRhoniyPassword == "12345678"
        if HNONWYCELRhoniyLabGlow || HNONWYCELRhoniyKnownMuse != nil {
            HNONWYCELRhoniyRunOriginalLogin(HNONWYCELRhoniyEmail: HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword: HNONWYCELRhoniyPassword, HNONWYCELRhoniyArchive: HNONWYCELRhoniyKnownMuse)
            return
        }
        HNONWYCELRhoniyRoute = .HNONWYCELRfirstMuse
        HNONWYCELRhoniyPassportEmailDock.textField.text = HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportPasswordDock.textField.text = HNONWYCELRhoniyPassword
        if HNONWYCELRhoniyPassportNameDock.textField.text?.isEmpty ?? true {
            HNONWYCELRhoniyPassportNameDock.textField.text = HNONWYCELRhoniyDefaultName(HNONWYCELRhoniyEmail)
        }
        HNONWYCELRhoniyShiftStage(.HNONWYCELRpassportMuse, animated: true)
    }

    @objc func HNONWYCELRhoniyAdvancePassportMuse() {
        view.endEditing(true)
        let HNONWYCELRhoniyName = (HNONWYCELRhoniyPassportNameDock.textField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        let HNONWYCELRhoniyEmail = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyNormalizedTrail(HNONWYCELRhoniyPassportEmailDock.textField.text ?? "")
        let HNONWYCELRhoniyPassword = HNONWYCELRhoniyPassportPasswordDock.textField.text ?? ""
        guard HNONWYCELRhoniyValidatePassportMuse(HNONWYCELRhoniyName, HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword) else {
            return
        }
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyDisplayName = HNONWYCELRhoniyName
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyEmail = HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyPassword = HNONWYCELRhoniyPassword
        if HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyGender.isEmpty {
            HNONWYCELRhoniyDressGenderLane("Male")
        }
        HNONWYCELRhoniyShiftStage(.HNONWYCELRprofileVerse, animated: true)
    }

    @objc func HNONWYCELRhoniyCompletePassport() {
        view.endEditing(true)
        guard !HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyGender.isEmpty else {
            HNONWYCELRhoniyShowPrompt("Select a style gender to continue.")
            return
        }
        guard !HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark.isEmpty else {
            HNONWYCELRhoniyShowPrompt("Choose your birth month to continue.")
            return
        }
        let HNONWYCELRhoniyArchive = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyPassport(HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyEmail)
        HNONWYCELRhoniyRunOriginalLogin(HNONWYCELRhoniyEmail: HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword: HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyPassword, HNONWYCELRhoniyArchive: HNONWYCELRhoniyArchive)
    }

    func HNONWYCELRhoniyValidateEmailRunway(_ HNONWYCELRhoniyEmail: String, _ HNONWYCELRhoniyPassword: String) -> Bool {
        guard !HNONWYCELRhoniyEmail.isEmpty else {
            HNONWYCELRhoniyShowPrompt("Please enter your email.")
            return false
        }
        let HNONWYCELRhoniyPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\\\.[A-Za-z]{2,64}"
        guard NSPredicate(format: "SELF MATCHES %@", HNONWYCELRhoniyPattern).evaluate(with: HNONWYCELRhoniyEmail) else {
            HNONWYCELRhoniyShowPrompt("Please enter a valid email.")
            return false
        }
        guard !HNONWYCELRhoniyPassword.isEmpty else {
            HNONWYCELRhoniyShowPrompt("Please enter your password.")
            return false
        }
        guard HNONWYCELRhoniyConsentChoice else {
            HNONWYCELRhoniyShowPrompt("Agree to the Terms and Privacy Policy first.")
            return false
        }
        return true
    }

    func HNONWYCELRhoniyValidatePassportMuse(_ HNONWYCELRhoniyName: String, _ HNONWYCELRhoniyEmail: String, _ HNONWYCELRhoniyPassword: String) -> Bool {
        guard !HNONWYCELRhoniyName.isEmpty else {
            HNONWYCELRhoniyShowPrompt("Create a display name for your Honiy passport.")
            return false
        }
        guard HNONWYCELRhoniyValidateEmailRunway(HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword) else {
            return false
        }
        guard HNONWYCELRhoniyPassword.count >= 8 else {
            HNONWYCELRhoniyShowPrompt("Use at least 8 characters for your password.")
            return false
        }
        return true
    }

    func HNONWYCELRhoniyDefaultName(_ HNONWYCELRhoniyEmail: String) -> String {
        let HNONWYCELRhoniySeed = HNONWYCELRhoniyEmail.components(separatedBy: "@").first ?? "Honiy"
        return HNONWYCELRhoniySeed.prefix(1).uppercased() + HNONWYCELRhoniySeed.dropFirst()
    }

    func HNONWYCELRhoniySetLoading(_ HNONWYCELRhoniyLoading: Bool) {
        view.isUserInteractionEnabled = !HNONWYCELRhoniyLoading
        HNONWYCELRhoniyLoading ? HNONWYCELRhoniySpinner.startAnimating() : HNONWYCELRhoniySpinner.stopAnimating()
    }

    func HNONWYCELRhoniyRunOriginalLogin(HNONWYCELRhoniyEmail: String, HNONWYCELRhoniyPassword: String, HNONWYCELRhoniyArchive: HNONWYCELRHoniyPassportArchive?) {
        HNONWYCELRhoniySetLoading(true)
        HNONWYCELRLaunchinBeginController.HNONWYCELRwardrobeRevelry(HNONWYCELRstyleMerrymaking: "/spcbxozzwwiwz/ztotxc", HNONWYCELRoutfitMirth: ["styleVisionary": "45448564", "wardrobeInnovator": HNONWYCELRhoniyEmail, "outfitTrailblazer": HNONWYCELRhoniyPassword]) { [weak self] HNONWYCELRhoniyResult in
            guard let self else {
                return
            }
            self.HNONWYCELRhoniySetLoading(false)
            guard let HNONWYCELRhoniyPayload = self.HNONWYCELRhoniyPayloadMap(HNONWYCELRhoniyResult),
                  let HNONWYCELRhoniyExplorer = self.HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["outfitExplorer", "token", "authToken"]) as? String,
                  !HNONWYCELRhoniyExplorer.isEmpty else {
                HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRmessage: "Login failed. Check the account details and try again.", HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
                return
            }
            self.HNONWYCELRWardrobePortal(HNONWYCELRhoniyPayload: HNONWYCELRhoniyPayload, HNONWYCELRhoniyExplorer: HNONWYCELRhoniyExplorer, HNONWYCELRhoniyEmail: HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword: HNONWYCELRhoniyPassword, HNONWYCELRhoniyArchive: HNONWYCELRhoniyArchive)
        } HNONWYCELRwardrobeHilarity: { [weak self] HNONWYCELRhoniyError in
            guard let self else {
                return
            }
            self.HNONWYCELRhoniySetLoading(false)
            HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRmessage: HNONWYCELRhoniyError.localizedDescription, HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
        }
    }

    func HNONWYCELRWardrobePortal(HNONWYCELRhoniyPayload: [String: Any], HNONWYCELRhoniyExplorer: String, HNONWYCELRhoniyEmail: String, HNONWYCELRhoniyPassword: String, HNONWYCELRhoniyArchive: HNONWYCELRHoniyPassportArchive?) {
        HNONWYCELRWardrobeVatontroller.HNONWYCELRoutfitExplorer = HNONWYCELRhoniyExplorer
        let HNONWYCELRhoniyServerName = HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["outfitArchitect", "name", "nickname"]) as? String
        let HNONWYCELRhoniyServerGender = HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["gender", "sex"]) as? String
        let HNONWYCELRhoniyServerAppleId = HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: ["Id", "id", "userId", "appleUserId"]) as? String
        let HNONWYCELRhoniyAvatarRoute = HNONWYCELRhoniyPortraitImage.map { HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyStoreAvatar($0, HNONWYCELRhoniyEmail: HNONWYCELRhoniyEmail) } ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyAvatarRoute ?? ""
        let HNONWYCELRhoniyDisplayName = (HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyDisplayName.isEmpty ? nil : HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyDisplayName) ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyDisplayName ?? HNONWYCELRhoniyServerName ?? HNONWYCELRhoniyDefaultName(HNONWYCELRhoniyEmail)
        let HNONWYCELRhoniyGender = (HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyGender.isEmpty ? nil : HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyGender) ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyGender ?? HNONWYCELRhoniyServerGender ?? "Male"
        let HNONWYCELRhoniyBirthMark = (HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark.isEmpty ? nil : HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark) ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyBirthMark ?? ""
        let HNONWYCELRhoniyPassport = HNONWYCELRHoniyPassportArchive(HNONWYCELRhoniyEmail: HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword: HNONWYCELRhoniyPassword, HNONWYCELRhoniyDisplayName: HNONWYCELRhoniyDisplayName, HNONWYCELRhoniyGender: HNONWYCELRhoniyGender, HNONWYCELRhoniyBirthMark: HNONWYCELRhoniyBirthMark, HNONWYCELRhoniyAvatarRoute: HNONWYCELRhoniyAvatarRoute, HNONWYCELRhoniyAppleCode: HNONWYCELRhoniyServerAppleId ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyAppleCode ?? "", HNONWYCELRhoniyExplorer: HNONWYCELRhoniyExplorer)
        HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyRememberPassport(HNONWYCELRhoniyPassport, HNONWYCELRhoniyCurrentGlow: true)
        UserDefaults.standard.set(HNONWYCELRhoniyDisplayName, forKey: "outfitArchitect")
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = HNONWYCELRRootNavigationController()
        HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRmessage: "Login successful", HNONWYCELRstate: .HNONWYCELRsuccess, HNONWYCELRin: self)
    }

    func HNONWYCELRhoniyPayloadMap(_ HNONWYCELRhoniyResult: Any?) -> [String: Any]? {
        guard let HNONWYCELRhoniyBox = HNONWYCELRhoniyResult as? [String: Any] else {
            return nil
        }
        if let HNONWYCELRhoniyData = HNONWYCELRhoniyBox["data"] as? [String: Any] {
            return HNONWYCELRhoniyData
        }
        if let HNONWYCELRhoniyData = HNONWYCELRhoniyBox[AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "dfaftsa")] as? [String: Any] {
            return HNONWYCELRhoniyData
        }
        return HNONWYCELRhoniyBox
    }

    func HNONWYCELRhoniyPayloadValue(_ HNONWYCELRhoniyPayload: [String: Any], HNONWYCELRhoniyKeys: [String]) -> Any? {
        for HNONWYCELRhoniyKey in HNONWYCELRhoniyKeys {
            if let HNONWYCELRhoniyValue = HNONWYCELRhoniyPayload[HNONWYCELRhoniyKey] {
                return HNONWYCELRhoniyValue
            }
        }
        return nil
    }

    func HNONWYCELRhoniyShowPrompt(_ HNONWYCELRhoniyMessage: String) {
        let HNONWYCELRhoniyAlert = UIAlertController(title: "Notice", message: HNONWYCELRhoniyMessage, preferredStyle: .alert)
        HNONWYCELRhoniyAlert.addAction(UIAlertAction(title: "OK", style: .default))
        present(HNONWYCELRhoniyAlert, animated: true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case HNONWYCELRhoniyLoginEmailDock.textField:
            HNONWYCELRhoniyLoginPasswordDock.textField.becomeFirstResponder()
        case HNONWYCELRhoniyLoginPasswordDock.textField:
            textField.resignFirstResponder()
            HNONWYCELRhoniyHandleEmailRunway()
        case HNONWYCELRhoniyPassportNameDock.textField:
            HNONWYCELRhoniyPassportEmailDock.textField.becomeFirstResponder()
        case HNONWYCELRhoniyPassportEmailDock.textField:
            HNONWYCELRhoniyPassportPasswordDock.textField.becomeFirstResponder()
        case HNONWYCELRhoniyPassportPasswordDock.textField:
            textField.resignFirstResponder()
            HNONWYCELRhoniyAdvancePassportMuse()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
}
