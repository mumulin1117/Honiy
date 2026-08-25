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
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELminimalStyling, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELminimalStyling].forEach {
            $0.addTarget(self, action: #selector(HNONWYCELRhoniyFlipConsent), for: .touchUpInside)
        }
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELclassicStyling, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELclassicStyling].forEach {
            $0.tag = 45
            $0.addTarget(self, action: #selector(HNONWYCELRhoniyOpenPolicy(_:)), for: .touchUpInside)
        }
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELromanticStyling, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELromanticStyling].forEach {
            $0.tag = 55
            $0.addTarget(self, action: #selector(HNONWYCELRhoniyOpenPolicy(_:)), for: .touchUpInside)
        }
        let HNONWYCELRhoniyTapCurtain = UITapGestureRecognizer(target: self, action: #selector(HNONWYCELRhoniyDismissKeys))
        HNONWYCELRhoniyTapCurtain.cancelsTouchesInView = false
        view.addGestureRecognizer(HNONWYCELRhoniyTapCurtain)
        HNONWYCELRhoniyRefreshBirthMark()
        HNONWYCELRhoniyRefreshConsent()
    }

    func HNONWYCELRhoniyelegantStyling() {
        guard let HNONWYCELRhoniyArchive = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyCurrentPassport() else {
            return
        }
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniywarmToneStyling = HNONWYCELRhoniyArchive.HNONWYCELRhoniyfestiveStylel
        HNONWYCELRhoniyPassportDraft.HNONWYCELcoolToneStyling = HNONWYCELRhoniyArchive.HNONWYCELRhoniyseasonalWardrobe
        HNONWYCELRhoniyPassportDraft.HNONWYCEbrightToneStyling = HNONWYCELRhoniyArchive.HNONWYCELRhoniyholidayLook
        HNONWYCELRhoniyPassportDraft.HNONWYCELprintStyling = HNONWYCELRhoniyArchive.HNONWYCELRhoniycelebrationWear
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark = HNONWYCELRhoniyArchive.HNONWYCELRhoniyoccasionDressing
        HNONWYCELRhoniyPassportDraft.HNONWYCELstatementStyling = HNONWYCELRhoniyArchive.HNONWYCELRhoniyAppleCode
        HNONWYCELRhoniyLoginEmailDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyfestiveStylel
        HNONWYCELRhoniyLoginPasswordDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyseasonalWardrobe
        HNONWYCELRhoniyPassportNameDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyholidayLook
        HNONWYCELRhoniyPassportEmailDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyfestiveStylel
        HNONWYCELRhoniyPassportPasswordDock.textField.text = HNONWYCELRhoniyArchive.HNONWYCELRhoniyseasonalWardrobe
        if let HNONWYCELRhoniyPortrait = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyAvatarFrame(HNONWYCELRhoniyArchive) {
            HNONWYCELRhoniyPortraitImage = HNONWYCELRhoniyPortrait
            HNONWYCELRhoniyAvatarImageView.image = HNONWYCELRhoniyPortrait
        }
        HNONWYCELRhoniyDressGenderLane(HNONWYCELRhoniyArchive.HNONWYCELRhoniycelebrationWear)
        HNONWYCELRhoniyRefreshBirthMark(HNONWYCELRhoniyArchive.HNONWYCELRhoniyoccasionDressing)
    }

    func HNONWYCELRhoniyRefreshConsent() {
        [HNONWYCELRhoniyLoginConsentDeck.HNONWYCELminimalStyling, HNONWYCELRhoniyPassportConsentDeck.HNONWYCELminimalStyling].forEach {
            $0.isSelected = HNONWYCELRhoniyConsentChoice
        }
    }

    func HNONWYCELRhoniyDressGenderLane(_ HNONWYCELRhoniyGender: String) {
        let HNONWYCELRhoniyTone = HNONWYCELRhoniyGender.lowercased() == AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "mxaxlxe") ? AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Mxaxlxe") : AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Fxexmxaxlxe")
        HNONWYCELRhoniyPassportDraft.HNONWYCELprintStyling = HNONWYCELRhoniyTone
        let HNONWYCELRhoniyButtons = [HNONWYCELRhoniyGenderMuseButton: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Mxaxlxe"), HNONWYCELRhoniyGenderFrostButton: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Fxexmxaxlxe")]
        HNONWYCELRhoniyButtons.forEach { HNONWYCELRhoniyPair in
            let HNONWYCELRhoniyActive = HNONWYCELRhoniyPair.value == HNONWYCELRhoniyTone
            HNONWYCELRhoniyPair.key.backgroundColor = HNONWYCELRhoniyActive ? UIColor(red: 0.73, green: 1.0, blue: 0.43, alpha: 0.96) : UIColor.white.withAlphaComponent(0.92)
            HNONWYCELRhoniyPair.key.layer.borderColor = HNONWYCELRhoniyActive ? UIColor.black.withAlphaComponent(0.18).cgColor : UIColor.black.withAlphaComponent(0.08).cgColor
        }
    }

    func HNONWYCELRhoniyRefreshBirthMark(_ HNONWYCELRhoniyPreset: String? = nil) {
        let HNONWYCELRhoniyFormatter = DateFormatter()
        HNONWYCELRhoniyFormatter.locale = Locale(identifier: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "exnx_xUxSx_xPxOxSxIxX"))
        HNONWYCELRhoniyFormatter.dateFormat = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "MxMxMx xyxyxyxy")
        if let HNONWYCELRhoniyPreset, !HNONWYCELRhoniyPreset.isEmpty {
            let HNONWYCELRhoniyReader = DateFormatter()
            HNONWYCELRhoniyReader.locale = Locale(identifier: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "exnx_xUxSx_xPxOxSxIxX"))
            HNONWYCELRhoniyReader.dateFormat = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "yxyxyxyx-xMxM")
            if let HNONWYCELRhoniyDate = HNONWYCELRhoniyReader.date(from: HNONWYCELRhoniyPreset) {
                HNONWYCELRhoniyBirthPicker.setDate(HNONWYCELRhoniyDate, animated: false)
            }
        }
        let HNONWYCELRhoniyShown = HNONWYCELRhoniyFormatter.string(from: HNONWYCELRhoniyBirthPicker.date)
        HNONWYCELRhoniyBirthValueButton.setTitle(HNONWYCELRhoniyShown, for: .normal)
        let HNONWYCELRhoniyWriter = DateFormatter()
        HNONWYCELRhoniyWriter.locale = Locale(identifier: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "exnx_xUxSx_xPxOxSxIxX"))
        HNONWYCELRhoniyWriter.dateFormat = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "yxyxyxyx-xMxM")
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
        if HNONWYCELRhoniyPassportDraft.HNONWYCEbrightToneStyling.isEmpty {
            HNONWYCELRhoniyPassportNameDock.textField.text = nil
        }
        HNONWYCELRhoniyPassportEmailDock.textField.text = HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniywarmToneStyling
        HNONWYCELRhoniyPassportPasswordDock.textField.text = HNONWYCELRhoniyPassportDraft.HNONWYCELcoolToneStyling
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
        let HNONWYCELRhoniyGender = [AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Mxaxlxe"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Fxexmxaxlxe")][HNONWYCELRhoniySender.tag]
        HNONWYCELRhoniyDressGenderLane(HNONWYCELRhoniyGender)
    }

    @objc func HNONWYCELRhoniyHandleEmailRunway() {
        view.endEditing(true)
        let HNONWYCELRhoniyEmail = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyNormalizedTrail(HNONWYCELRhoniyLoginEmailDock.textField.text ?? "")
        let HNONWYCELRhoniyPassword = HNONWYCELRhoniyLoginPasswordDock.textField.text ?? ""
        guard HNONWYCELRhoniyValidateEmailRunway(HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword) else {
            return
        }
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniywarmToneStyling = HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportDraft.HNONWYCELcoolToneStyling = HNONWYCELRhoniyPassword
        let HNONWYCELRhoniyKnownMuse = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyPassport(HNONWYCELRhoniyEmail)
        let HNONWYCELRhoniyLabGlow = HNONWYCELRhoniyEmail == AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "hxoxnxixyx@xgxmxaxixlx.xcxoxm") && HNONWYCELRhoniyPassword == AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "1x2x3x4x5x6x7x8")
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
        HNONWYCELRhoniyPassportDraft.HNONWYCEbrightToneStyling = HNONWYCELRhoniyName
        HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniywarmToneStyling = HNONWYCELRhoniyEmail
        HNONWYCELRhoniyPassportDraft.HNONWYCELcoolToneStyling = HNONWYCELRhoniyPassword
        if HNONWYCELRhoniyPassportDraft.HNONWYCELprintStyling.isEmpty {
            HNONWYCELRhoniyDressGenderLane(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Mxaxlxe"))
        }
        HNONWYCELRhoniyShiftStage(.HNONWYCELRprofileVerse, animated: true)
    }

    @objc func HNONWYCELRhoniyCompletePassport() {
        view.endEditing(true)
        guard !HNONWYCELRhoniyPassportDraft.HNONWYCELprintStyling.isEmpty else {
            HNONWYCELRhoniyShowPrompt(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Sxexlxexcxtx xax xsxtxyxlxex xgxexnxdxexrx xtxox xcxoxnxtxixnxuxex."))
            return
        }
        guard !HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark.isEmpty else {
            HNONWYCELRhoniyShowPrompt(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Cxhxoxoxsxex xyxoxuxrx xbxixrxtxhx xmxoxnxtxhx xtxox xcxoxnxtxixnxuxex."))
            return
        }
        let HNONWYCELRhoniyArchive = HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyPassport(HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniywarmToneStyling)
        HNONWYCELRhoniyRunOriginalLogin(HNONWYCELRhoniyEmail: HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniywarmToneStyling, HNONWYCELRhoniyPassword: HNONWYCELRhoniyPassportDraft.HNONWYCELcoolToneStyling, HNONWYCELRhoniyArchive: HNONWYCELRhoniyArchive)
    }

    func HNONWYCELRhoniyValidateEmailRunway(_ HNONWYCELRhoniyEmail: String, _ HNONWYCELRhoniyPassword: String) -> Bool {
        guard !HNONWYCELRhoniyEmail.isEmpty else {
            HNONWYCELRhoniyShowPrompt(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Pxlxexaxsxex xexnxtxexrx xyxoxuxrx xexmxaxixlx."))
            return false
        }
        guard !HNONWYCELRhoniyPassword.isEmpty else {
            HNONWYCELRhoniyShowPrompt(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Pxlxexaxsxex xexnxtxexrx xyxoxuxrx xpxaxsxsxwxoxrxdx."))
            return false
        }
        guard HNONWYCELRhoniyConsentChoice else {
            HNONWYCELRhoniyShowPrompt(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Axgxrxexex xtxox xtxhxex xTxexrxmxsx xaxnxdx xPxrxixvxaxcxyx xPxoxlxixcxyx xfxixrxsxtx."))
            return false
        }
        return true
    }

    func HNONWYCELRhoniyValidatePassportMuse(_ HNONWYCELRhoniyName: String, _ HNONWYCELRhoniyEmail: String, _ HNONWYCELRhoniyPassword: String) -> Bool {
        guard !HNONWYCELRhoniyName.isEmpty else {
            HNONWYCELRhoniyShowPrompt(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Cxrxexaxtxex xax xdxixsxpxlxaxyx xnxaxmxex xfxoxrx xyxoxuxrx xHxoxnxixyx xpxaxsxsxpxoxrxtx."))
            return false
        }
        guard HNONWYCELRhoniyValidateEmailRunway(HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword) else {
            return false
        }
        guard HNONWYCELRhoniyPassword.count >= 8 else {
            HNONWYCELRhoniyShowPrompt(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Uxsxex xaxtx xlxexaxsxtx x8x xcxhxaxrxaxcxtxexrxsx xfxoxrx xyxoxuxrx xpxaxsxsxwxoxrxdx."))
            return false
        }
        return true
    }

    func HNONWYCELRhoniyDefaultName(_ HNONWYCELRhoniyEmail: String) -> String {
        let HNONWYCELRhoniySeed = HNONWYCELRhoniyEmail.components(separatedBy: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "@")).first ?? AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Hxoxnxixy")
        return HNONWYCELRhoniySeed.prefix(1).uppercased() + HNONWYCELRhoniySeed.dropFirst()
    }

    func HNONWYCELRhoniySetLoading(_ HNONWYCELRhoniyLoading: Bool) {
        view.isUserInteractionEnabled = !HNONWYCELRhoniyLoading
        HNONWYCELRhoniyLoading ? HNONWYCELRhoniySpinner.startAnimating() : HNONWYCELRhoniySpinner.stopAnimating()
    }

    func HNONWYCELRhoniyRunOriginalLogin(HNONWYCELRhoniyEmail: String, HNONWYCELRhoniyPassword: String, HNONWYCELRhoniyArchive: HNONWYCELRHoniyPassportArchive?) {
        HNONWYCELRhoniySetLoading(true)
        HNONWYCELRLaunchinBeginController.HNONWYCELRwardrobeRevelry(HNONWYCELRstyleMerrymaking: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "/xsxpxcxbxxxoxzxzxwxwxixwxzx/xzxtxoxtxxxc"), HNONWYCELRoutfitMirth: [AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "sxtxyxlxexVxixsxixoxnxaxrxy"): AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "4x5x4x4x8x5x6x4"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "wxaxrxdxrxoxbxexIxnxnxoxvxaxtxoxr"): HNONWYCELRhoniyEmail, AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "oxuxtxfxixtxTxrxaxixlxbxlxaxzxexr"): HNONWYCELRhoniyPassword]) { [weak self] HNONWYCELRhoniyResult in
            guard let self else {
                return
            }
            self.HNONWYCELRhoniySetLoading(false)
            guard let HNONWYCELRhoniyPayload = self.HNONWYCELRhoniyPayloadMap(HNONWYCELRhoniyResult),
                  let HNONWYCELRhoniyExplorer = self.HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: [AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "oxuxtxfxixtxExxxpxlxoxrxexr"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "txoxkxexn"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "axuxtxhxTxoxkxexn")]) as? String,
                  !HNONWYCELRhoniyExplorer.isEmpty else {
                HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRcaption: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Lxoxgxixnx xfxaxixlxexdx.x xCxhxexcxkx xtxhxex xaxcxcxoxuxnxtx xdxextxaxixlxsx xaxnxdx xtxrxyx xaxgxaxixnx."), HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
                return
            }
            self.HNONWYCELRWardrobePortal(HNONWYCELRhoniyPayload: HNONWYCELRhoniyPayload, HNONWYCELRhoniyExplorer: HNONWYCELRhoniyExplorer, HNONWYCELRhoniyEmail: HNONWYCELRhoniyEmail, HNONWYCELRhoniyPassword: HNONWYCELRhoniyPassword, HNONWYCELRhoniyArchive: HNONWYCELRhoniyArchive)
        } HNONWYCELRwardrobeHilarity: { [weak self] HNONWYCELRhoniyError in
            guard let self else {
                return
            }
            self.HNONWYCELRhoniySetLoading(false)
            HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRcaption: HNONWYCELRhoniyError.localizedDescription, HNONWYCELRstate: .HNONWYCELRerror, HNONWYCELRin: self)
        }
    }

    func HNONWYCELRWardrobePortal(HNONWYCELRhoniyPayload: [String: Any], HNONWYCELRhoniyExplorer: String, HNONWYCELRhoniyEmail: String, HNONWYCELRhoniyPassword: String, HNONWYCELRhoniyArchive: HNONWYCELRHoniyPassportArchive?) {
        HNONWYCELRWardrobeVatontroller.HNONWYCELRoutfitExplorer = HNONWYCELRhoniyExplorer
        let HNONWYCELRhoniyServerName = HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: [AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "oxuxtxfxixtxAxrxcxhxixtxexcxt"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "nxaxmxe"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "nxixcxkxnxaxmxe")]) as? String
        let HNONWYCELRhoniyServerGender = HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: [AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "gxexnxdxexr"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "sxexx")]) as? String
        let HNONWYCELRhoniyServerAppleId = HNONWYCELRhoniyPayloadValue(HNONWYCELRhoniyPayload, HNONWYCELRhoniyKeys: [AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Ixd"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "ixd"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "uxsxexrxIxd"), AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "axpxpxlxexUxsxexrxIxd")]) as? String
        let HNONWYCELRhoniyAvatarRoute = HNONWYCELRhoniyPortraitImage.map { HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyStoreAvatar($0, HNONWYCELRhoniyEmail: HNONWYCELRhoniyEmail) } ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniystyleInspiration ?? ""
        let HNONWYCELRhoniyDisplayName = (HNONWYCELRhoniyPassportDraft.HNONWYCEbrightToneStyling.isEmpty ? nil : HNONWYCELRhoniyPassportDraft.HNONWYCEbrightToneStyling) ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyholidayLook ?? HNONWYCELRhoniyServerName ?? HNONWYCELRhoniyDefaultName(HNONWYCELRhoniyEmail)
        let HNONWYCELRhoniyGender = (HNONWYCELRhoniyPassportDraft.HNONWYCELprintStyling.isEmpty ? nil : HNONWYCELRhoniyPassportDraft.HNONWYCELprintStyling) ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniycelebrationWear ?? HNONWYCELRhoniyServerGender ?? AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Mxaxlxe")
        let HNONWYCELRhoniyBirthMark = (HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark.isEmpty ? nil : HNONWYCELRhoniyPassportDraft.HNONWYCELRhoniyBirthMark) ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyoccasionDressing ?? ""
        let HNONWYCELRhoniyPassport = HNONWYCELRHoniyPassportArchive(HNONWYCELRhoniyfestiveStylel: HNONWYCELRhoniyEmail, HNONWYCELRhoniyseasonalWardrobe: HNONWYCELRhoniyPassword, HNONWYCELRhoniyholidayLook: HNONWYCELRhoniyDisplayName, HNONWYCELRhoniycelebrationWear: HNONWYCELRhoniyGender, HNONWYCELRhoniyoccasionDressing: HNONWYCELRhoniyBirthMark, HNONWYCELRhoniystyleInspiration: HNONWYCELRhoniyAvatarRoute, HNONWYCELRhoniyAppleCode: HNONWYCELRhoniyServerAppleId ?? HNONWYCELRhoniyArchive?.HNONWYCELRhoniyAppleCode ?? "", HNONWYCELRhoniywardrobeCuration: HNONWYCELRhoniyExplorer)
        HNONWYCELRHoniyPassportCabinet.HNONWYCELRhoniyRememberPassport(HNONWYCELRhoniyPassport, HNONWYCELRhoniyCurrentGlow: true)
        UserDefaults.standard.set(HNONWYCELRhoniyDisplayName, forKey: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "oxuxtxfxixtxAxrxcxhxixtxexcxt"))
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = HNONWYCELRRootNavigationController()
        HNONWYCELRStyleSparkNotifier.HNONWYCELRshow(HNONWYCELRcaption: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Lxoxgxixnx xsxuxcxcxexsxsxfxuxl"), HNONWYCELRstate: .HNONWYCELRsuccess, HNONWYCELRin: self)
    }

    func HNONWYCELRhoniyPayloadMap(_ HNONWYCELRhoniyResult: Any?) -> [String: Any]? {
        guard let HNONWYCELRhoniyBox = HNONWYCELRhoniyResult as? [String: Any] else {
            return nil
        }
        if let HNONWYCELRhoniyData = HNONWYCELRhoniyBox[AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "dxaxtxa")] as? [String: Any] {
            return HNONWYCELRhoniyData
        }
        if let HNONWYCELRhoniyData = HNONWYCELRhoniyBox[AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "dxaxtxa")] as? [String: Any] {
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

    func HNONWYCELRhoniyShowPrompt(_ HNONWYCELRhoniystyleCorner: String) {
        let HNONWYCELRhoniyAlert = UIAlertController(title: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Nxoxtxixcxe"), message: HNONWYCELRhoniystyleCorner, preferredStyle: .alert)
        HNONWYCELRhoniyAlert.addAction(UIAlertAction(title: AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "OxK"), style: .default))
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
