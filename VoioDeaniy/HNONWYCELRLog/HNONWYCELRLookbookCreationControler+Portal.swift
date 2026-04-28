import UIKit

extension HNONWYCELRLookbookCreationControler {

    func HNONWYCELRhoniyRenderLoginAsset(_ HNONWYCELRhoniyAssetName: String) -> UIImage? {
        HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: HNONWYCELRhoniyAssetName)
    }

    func HNONWYCELRhoniyScaleWidth(_ HNONWYCELRhoniyValue: CGFloat) -> CGFloat {
        UIScreen.main.bounds.width * HNONWYCELRhoniyValue / 375
    }

    func HNONWYCELRhoniyScaleHeight(_ HNONWYCELRhoniyValue: CGFloat) -> CGFloat {
        UIScreen.main.bounds.height * HNONWYCELRhoniyValue / 812
    }

    func HNONWYCELRhoniyTitleFont(_ HNONWYCELRhoniySize: CGFloat) -> UIFont {
        UIFont.systemFont(ofSize: HNONWYCELRhoniyScaleWidth(HNONWYCELRhoniySize), weight: .black)
    }

    func HNONWYCELRhoniyBodyFont(_ HNONWYCELRhoniySize: CGFloat, HNONWYCELRhoniyWeight: UIFont.Weight = .regular) -> UIFont {
        UIFont.systemFont(ofSize: HNONWYCELRhoniyScaleWidth(HNONWYCELRhoniySize), weight: HNONWYCELRhoniyWeight)
    }

    func HNONWYCELRhoniyStoryFont(_ HNONWYCELRhoniySize: CGFloat) -> UIFont {
        UIFont(name: "MarkerFelt-Wide", size: HNONWYCELRhoniyScaleWidth(HNONWYCELRhoniySize))
        ?? UIFont(name: "Georgia-BoldItalic", size: HNONWYCELRhoniyScaleWidth(HNONWYCELRhoniySize))
        ?? UIFont.systemFont(ofSize: HNONWYCELRhoniyScaleWidth(HNONWYCELRhoniySize), weight: .black)
    }

    func HNONWYCELRhoniyPolishGlowButton(_ HNONWYCELRhoniyButton: UIButton, HNONWYCELRhoniyTitle: String) {
        HNONWYCELRhoniyButton.setBackgroundImage(nil, for: .normal)
        HNONWYCELRhoniyButton.setTitle(HNONWYCELRhoniyTitle, for: .normal)
        HNONWYCELRhoniyButton.setTitleColor(.black, for: .normal)
        HNONWYCELRhoniyButton.titleLabel?.font = UIFont(name: "Georgia-BoldItalic", size: HNONWYCELRhoniyScaleWidth(22)) ?? HNONWYCELRhoniyTitleFont(22)
        HNONWYCELRhoniyButton.layer.cornerRadius = HNONWYCELRhoniyButton.bounds.height / 2
        HNONWYCELRhoniyButton.clipsToBounds = true
        let HNONWYCELRhoniyLayerName = "HNONWYCELRhoniyGlowTrack"
        let HNONWYCELRhoniyLayer = (HNONWYCELRhoniyButton.layer.sublayers?.first { $0.name == HNONWYCELRhoniyLayerName } as? CAGradientLayer) ?? CAGradientLayer()
        HNONWYCELRhoniyLayer.name = HNONWYCELRhoniyLayerName
        HNONWYCELRhoniyLayer.colors = [
            UIColor(red: 0.24, green: 0.82, blue: 0.94, alpha: 1).cgColor,
            UIColor(red: 0.49, green: 0.95, blue: 0.74, alpha: 1).cgColor,
            UIColor(red: 0.78, green: 1.0, blue: 0.3, alpha: 1).cgColor
        ]
        HNONWYCELRhoniyLayer.startPoint = CGPoint(x: 0, y: 0.5)
        HNONWYCELRhoniyLayer.endPoint = CGPoint(x: 1, y: 0.5)
        HNONWYCELRhoniyLayer.frame = HNONWYCELRhoniyButton.bounds
        HNONWYCELRhoniyLayer.cornerRadius = HNONWYCELRhoniyButton.bounds.height / 2
        if HNONWYCELRhoniyLayer.superlayer == nil {
            HNONWYCELRhoniyButton.layer.insertSublayer(HNONWYCELRhoniyLayer, at: 0)
        }
    }

    func HNONWYCELRhoniyBuildPortal() {
        view.backgroundColor = .white
        HNONWYCELRhoniyCanvasView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyCanvasView.backgroundColor = .white
        HNONWYCELRhoniyAuroraView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyAuroraLayer.colors = [
            UIColor(red: 0.95, green: 1.0, blue: 0.48, alpha: 0.95).cgColor,
            UIColor.white.withAlphaComponent(0.68).cgColor,
            UIColor(red: 0.87, green: 0.96, blue: 1.0, alpha: 0.95).cgColor,
            UIColor.white.withAlphaComponent(0).cgColor
        ]
        HNONWYCELRhoniyAuroraLayer.locations = [0, 0.35, 0.72, 1]
        HNONWYCELRhoniyAuroraLayer.startPoint = CGPoint(x: 0, y: 0)
        HNONWYCELRhoniyAuroraLayer.endPoint = CGPoint(x: 1, y: 1)
        HNONWYCELRhoniyAuroraView.layer.addSublayer(HNONWYCELRhoniyAuroraLayer)
        HNONWYCELRhoniyBackdropView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyBackdropView.image = HNONWYCELRhoniyRenderLoginAsset("HNONWYwelcomebg")
        HNONWYCELRhoniyBackdropView.contentMode = .scaleAspectFill
        HNONWYCELRhoniyBackdropView.clipsToBounds = true
        HNONWYCELRhoniyMistView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyMistLayer.colors = [UIColor.white.withAlphaComponent(0).cgColor, UIColor.white.withAlphaComponent(0.74).cgColor, UIColor.white.cgColor]
        HNONWYCELRhoniyMistLayer.locations = [0, 0.72, 1]
        HNONWYCELRhoniyMistView.layer.addSublayer(HNONWYCELRhoniyMistLayer)
        HNONWYCELRhoniyScrollView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyScrollView.alwaysBounceVertical = true
        HNONWYCELRhoniyScrollView.keyboardDismissMode = .interactive
        HNONWYCELRhoniyContentView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyPortalStack.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyPortalStack.axis = .vertical
        HNONWYCELRhoniyPortalStack.spacing = HNONWYCELRhoniyScaleHeight(20)
        HNONWYCELRhoniyBackLane.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyBackButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyBackButton.setImage(HNONWYCELRhoniyRenderLoginAsset("HNONWYback"), for: .normal)
        HNONWYCELRhoniyBackButton.tintColor = .black
        HNONWYCELRhoniyBackLane.addSubview(HNONWYCELRhoniyBackButton)
        HNONWYCELRhoniyConfigureWelcomeDeck()
        HNONWYCELRhoniyConfigureLoginDeck()
        HNONWYCELRhoniyConfigurePassportDeck()
        HNONWYCELRhoniyConfigureProfileDeck()
        HNONWYCELRhoniySpinner.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniySpinner.hidesWhenStopped = true
        HNONWYCELRhoniySpinner.color = .black
        view.addSubview(HNONWYCELRhoniyCanvasView)
        view.addSubview(HNONWYCELRhoniyAuroraView)
        view.addSubview(HNONWYCELRhoniyBackdropView)
        view.addSubview(HNONWYCELRhoniyMistView)
        view.addSubview(HNONWYCELRhoniyScrollView)
        HNONWYCELRhoniyScrollView.addSubview(HNONWYCELRhoniyContentView)
        HNONWYCELRhoniyContentView.addSubview(HNONWYCELRhoniyPortalStack)
        view.addSubview(HNONWYCELRhoniySpinner)
        [HNONWYCELRhoniyBackLane, HNONWYCELRhoniyWelcomeDeck, HNONWYCELRhoniyLoginDeck, HNONWYCELRhoniyPassportDeck, HNONWYCELRhoniyProfileDeck].forEach {
            HNONWYCELRhoniyPortalStack.addArrangedSubview($0)
        }
        let HNONWYCELRhoniyInset = HNONWYCELRhoniyScaleWidth(20)
        NSLayoutConstraint.activate([
            HNONWYCELRhoniyCanvasView.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRhoniyCanvasView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyCanvasView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HNONWYCELRhoniyCanvasView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRhoniyAuroraView.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRhoniyAuroraView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyAuroraView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HNONWYCELRhoniyAuroraView.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(255)),
            HNONWYCELRhoniyBackdropView.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRhoniyBackdropView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyBackdropView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HNONWYCELRhoniyBackdropView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRhoniyMistView.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRhoniyMistView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyMistView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HNONWYCELRhoniyMistView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRhoniyScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRhoniyScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HNONWYCELRhoniyScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRhoniyContentView.topAnchor.constraint(equalTo: HNONWYCELRhoniyScrollView.contentLayoutGuide.topAnchor),
            HNONWYCELRhoniyContentView.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyScrollView.contentLayoutGuide.leadingAnchor),
            HNONWYCELRhoniyContentView.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyScrollView.contentLayoutGuide.trailingAnchor),
            HNONWYCELRhoniyContentView.bottomAnchor.constraint(equalTo: HNONWYCELRhoniyScrollView.contentLayoutGuide.bottomAnchor),
            HNONWYCELRhoniyContentView.widthAnchor.constraint(equalTo: HNONWYCELRhoniyScrollView.frameLayoutGuide.widthAnchor),
            HNONWYCELRhoniyPortalStack.topAnchor.constraint(equalTo: HNONWYCELRhoniyContentView.safeAreaLayoutGuide.topAnchor, constant: HNONWYCELRhoniyScaleHeight(8)),
            HNONWYCELRhoniyPortalStack.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyContentView.leadingAnchor, constant: HNONWYCELRhoniyInset),
            HNONWYCELRhoniyPortalStack.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyContentView.trailingAnchor, constant: -HNONWYCELRhoniyInset),
            HNONWYCELRhoniyPortalStack.bottomAnchor.constraint(equalTo: HNONWYCELRhoniyContentView.bottomAnchor, constant: -HNONWYCELRhoniyScaleHeight(28)),
            HNONWYCELRhoniyBackLane.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(34)),
            HNONWYCELRhoniyBackButton.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyBackLane.leadingAnchor),
            HNONWYCELRhoniyBackButton.centerYAnchor.constraint(equalTo: HNONWYCELRhoniyBackLane.centerYAnchor),
            HNONWYCELRhoniyBackButton.widthAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(32)),
            HNONWYCELRhoniyBackButton.heightAnchor.constraint(equalTo: HNONWYCELRhoniyBackButton.widthAnchor),
            HNONWYCELRhoniySpinner.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HNONWYCELRhoniySpinner.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        HNONWYCELRhoniyObserveKeyboard()
    }

    func HNONWYCELRhoniyConfigureWelcomeDeck() {
        HNONWYCELRhoniyWelcomeDeck.axis = .vertical
        HNONWYCELRhoniyWelcomeDeck.alignment = .fill
        HNONWYCELRhoniyWelcomeDeck.spacing = HNONWYCELRhoniyScaleHeight(24)
        let HNONWYCELRhoniySkyGap = UIView()
        HNONWYCELRhoniySkyGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniySkyGap.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(435)).isActive = true
        HNONWYCELRhoniyWelcomeIconView.image = HNONWYCELRhoniyRenderLoginAsset("HNONWYCELRbznodu")
        HNONWYCELRhoniyWelcomeIconView.contentMode = .scaleAspectFit
        HNONWYCELRhoniyWelcomeIconView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyWelcomeIconView.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(136)).isActive = true
        HNONWYCELRhoniyQuickLoginButton.setBackgroundImage(HNONWYCELRhoniyRenderLoginAsset("HNONWYquicklogin"), for: .normal)
        HNONWYCELRhoniyQuickLoginButton.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(51)).isActive = true
        HNONWYCELRhoniyAppleButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyAppleButton.backgroundColor = .black
        HNONWYCELRhoniyAppleButton.layer.cornerRadius = HNONWYCELRhoniyScaleWidth(28)
        HNONWYCELRhoniyAppleButton.tintColor = .white
        HNONWYCELRhoniyAppleButton.setImage(UIImage(systemName: "applelogo"), for: .normal)
        HNONWYCELRhoniyAppleButton.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(56)).isActive = true
        HNONWYCELRhoniyAppleButton.widthAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(74)).isActive = true
        HNONWYCELRhoniySignupButton.setBackgroundImage(HNONWYCELRhoniyRenderLoginAsset("HNONWYtosignup"), for: .normal)
        HNONWYCELRhoniySignupButton.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(62)).isActive = true
        HNONWYCELRhoniyWelcomeActionRow.axis = .horizontal
        HNONWYCELRhoniyWelcomeActionRow.spacing = HNONWYCELRhoniyScaleWidth(12)
        HNONWYCELRhoniyWelcomeActionRow.alignment = .center
        HNONWYCELRhoniyWelcomeActionRow.distribution = .fill
        [HNONWYCELRhoniyAppleButton, HNONWYCELRhoniySignupButton].forEach { HNONWYCELRhoniyWelcomeActionRow.addArrangedSubview($0) }
        let HNONWYCELRhoniyGroundGap = UIView()
        HNONWYCELRhoniyGroundGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyGroundGap.heightAnchor.constraint(greaterThanOrEqualToConstant: HNONWYCELRhoniyScaleHeight(18)).isActive = true
        [HNONWYCELRhoniySkyGap, HNONWYCELRhoniyWelcomeIconView, HNONWYCELRhoniyQuickLoginButton, HNONWYCELRhoniyWelcomeActionRow, HNONWYCELRhoniyLoginConsentDeck, HNONWYCELRhoniyGroundGap].forEach {
            HNONWYCELRhoniyWelcomeDeck.addArrangedSubview($0)
        }
        HNONWYCELRhoniyWelcomeDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(18), after: HNONWYCELRhoniyWelcomeIconView)
        HNONWYCELRhoniyWelcomeDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(18), after: HNONWYCELRhoniyQuickLoginButton)
        HNONWYCELRhoniyWelcomeDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(26), after: HNONWYCELRhoniyWelcomeActionRow)
    }

    func HNONWYCELRhoniyConfigureLoginDeck() {
        HNONWYCELRhoniyLoginDeck.axis = .vertical
        HNONWYCELRhoniyLoginDeck.spacing = HNONWYCELRhoniyScaleHeight(18)
        HNONWYCELRhoniyLoginGlowGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyLoginGlowGap.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(24)).isActive = true
        HNONWYCELRhoniyLoginIconView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyLoginIconView.image = HNONWYCELRhoniyRenderLoginAsset("HNONWYCELRbznodu")
        HNONWYCELRhoniyLoginIconView.contentMode = .scaleAspectFit
        HNONWYCELRhoniyLoginIconView.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(100)).isActive = true
        HNONWYCELRhoniyLoginTitleLabel.text = "Welcome Honiy"
        HNONWYCELRhoniyLoginTitleLabel.textColor = .black
        HNONWYCELRhoniyLoginTitleLabel.textAlignment = .center
        HNONWYCELRhoniyLoginTitleLabel.font = HNONWYCELRhoniyStoryFont(30)
        let HNONWYCELRhoniyFieldGap = UIView()
        HNONWYCELRhoniyFieldGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyFieldGap.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(32)).isActive = true
        let HNONWYCELRhoniyConsentGap = UIView()
        HNONWYCELRhoniyConsentGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyConsentGap.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(110)).isActive = true
        HNONWYCELRhoniyLoginActionButton.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(51)).isActive = true
        [HNONWYCELRhoniyLoginGlowGap, HNONWYCELRhoniyLoginIconView, HNONWYCELRhoniyLoginTitleLabel, HNONWYCELRhoniyFieldGap, HNONWYCELRhoniyLoginEmailDock, HNONWYCELRhoniyLoginPasswordDock, HNONWYCELRhoniyLoginActionButton, HNONWYCELRhoniyConsentGap, HNONWYCELRhoniyPassportConsentDeck].forEach {
            HNONWYCELRhoniyLoginDeck.addArrangedSubview($0)
        }
        HNONWYCELRhoniyLoginDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(28), after: HNONWYCELRhoniyLoginTitleLabel)
        HNONWYCELRhoniyLoginDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(24), after: HNONWYCELRhoniyLoginPasswordDock)
        HNONWYCELRhoniyLoginDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(24), after: HNONWYCELRhoniyLoginActionButton)
    }

    func HNONWYCELRhoniyConfigurePassportDeck() {
        HNONWYCELRhoniyPassportDeck.axis = .vertical
        HNONWYCELRhoniyPassportDeck.spacing = HNONWYCELRhoniyScaleHeight(18)
        HNONWYCELRhoniyPassportGlowGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyPassportGlowGap.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(28)).isActive = true
        HNONWYCELRhoniyPassportTitleLabel.text = ""
        HNONWYCELRhoniyAvatarShellButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyAvatarFrameView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyAvatarFrameView.backgroundColor = .clear
        HNONWYCELRhoniyAvatarImageView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyAvatarImageView.contentMode = .scaleAspectFill
        HNONWYCELRhoniyAvatarImageView.clipsToBounds = true
        HNONWYCELRhoniyAvatarImageView.image = HNONWYCELRhoniyRenderLoginAsset("HNONWYCELRbznodu")
        HNONWYCELRhoniyAvatarLensView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyAvatarLensView.image = HNONWYCELRhoniyRenderLoginAsset("HNONWYcamera")
        HNONWYCELRhoniyAvatarLensView.contentMode = .scaleAspectFit
        HNONWYCELRhoniyAvatarFrameView.addSubview(HNONWYCELRhoniyAvatarImageView)
        HNONWYCELRhoniyAvatarFrameView.addSubview(HNONWYCELRhoniyAvatarLensView)
        HNONWYCELRhoniyAvatarShellButton.addSubview(HNONWYCELRhoniyAvatarFrameView)
        HNONWYCELRhoniyAvatarShellButton.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(170)).isActive = true
        NSLayoutConstraint.activate([
            HNONWYCELRhoniyAvatarFrameView.centerXAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarShellButton.centerXAnchor),
            HNONWYCELRhoniyAvatarFrameView.centerYAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarShellButton.centerYAnchor),
            HNONWYCELRhoniyAvatarFrameView.widthAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(160)),
            HNONWYCELRhoniyAvatarFrameView.heightAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarFrameView.widthAnchor),
            HNONWYCELRhoniyAvatarImageView.centerXAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarFrameView.centerXAnchor),
            HNONWYCELRhoniyAvatarImageView.centerYAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarFrameView.centerYAnchor),
            HNONWYCELRhoniyAvatarImageView.widthAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(134)),
            HNONWYCELRhoniyAvatarImageView.heightAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarImageView.widthAnchor),
            HNONWYCELRhoniyAvatarLensView.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarImageView.trailingAnchor, constant: HNONWYCELRhoniyScaleWidth(10)),
            HNONWYCELRhoniyAvatarLensView.topAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarImageView.topAnchor, constant: -HNONWYCELRhoniyScaleWidth(6)),
            HNONWYCELRhoniyAvatarLensView.widthAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(40)),
            HNONWYCELRhoniyAvatarLensView.heightAnchor.constraint(equalTo: HNONWYCELRhoniyAvatarLensView.widthAnchor)
        ])
        HNONWYCELRhoniyAvatarImageView.layer.cornerRadius = HNONWYCELRhoniyScaleWidth(67)
        let HNONWYCELRhoniyConsentGap = UIView()
        HNONWYCELRhoniyConsentGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyConsentGap.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(22)).isActive = true
        HNONWYCELRhoniyPassportNextButton.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(51)).isActive = true
        [HNONWYCELRhoniyPassportGlowGap, HNONWYCELRhoniyAvatarShellButton, HNONWYCELRhoniyPassportNameDock, HNONWYCELRhoniyPassportEmailDock, HNONWYCELRhoniyPassportPasswordDock, HNONWYCELRhoniyPassportNextButton, HNONWYCELRhoniyConsentGap, HNONWYCELRhoniyPassportConsentDeck].forEach {
            HNONWYCELRhoniyPassportDeck.addArrangedSubview($0)
        }
        HNONWYCELRhoniyPassportDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(20), after: HNONWYCELRhoniyAvatarShellButton)
        HNONWYCELRhoniyPassportDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(24), after: HNONWYCELRhoniyPassportPasswordDock)
        HNONWYCELRhoniyPassportDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(22), after: HNONWYCELRhoniyPassportNextButton)
    }

    func HNONWYCELRhoniyConfigureProfileDeck() {
        HNONWYCELRhoniyProfileDeck.axis = .vertical
        HNONWYCELRhoniyProfileDeck.spacing = HNONWYCELRhoniyScaleHeight(18)
        HNONWYCELRhoniyProfileGlowGap.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyProfileGlowGap.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(24)).isActive = true
        HNONWYCELRhoniyProfileTitleLabel.text = "Final step information"
        HNONWYCELRhoniyProfileTitleLabel.textColor = .black
        HNONWYCELRhoniyProfileTitleLabel.font = HNONWYCELRhoniyStoryFont(27)
        HNONWYCELRhoniyProfileTitleLabel.numberOfLines = 0
        HNONWYCELRhoniyProfileNoteLabel.text = "Please fill in your gender and date of birth."
        HNONWYCELRhoniyProfileNoteLabel.textColor = UIColor(white: 0.5, alpha: 1)
        HNONWYCELRhoniyProfileNoteLabel.font = HNONWYCELRhoniyBodyFont(14, HNONWYCELRhoniyWeight: .medium)
        HNONWYCELRhoniyProfileNoteLabel.numberOfLines = 0
        let HNONWYCELRhoniyGenderTitleLabel = UILabel()
        HNONWYCELRhoniyGenderTitleLabel.text = "Gender"
        HNONWYCELRhoniyGenderTitleLabel.textColor = .black
        HNONWYCELRhoniyGenderTitleLabel.font = UIFont(name: "Georgia-BoldItalic", size: HNONWYCELRhoniyScaleWidth(24)) ?? HNONWYCELRhoniyTitleFont(24)
        HNONWYCELRhoniyGenderLane.axis = .horizontal
        HNONWYCELRhoniyGenderLane.spacing = HNONWYCELRhoniyScaleWidth(12)
        HNONWYCELRhoniyGenderLane.distribution = .fillEqually
        [("Male", HNONWYCELRhoniyGenderMuseButton), ("Female", HNONWYCELRhoniyGenderFrostButton)].forEach { HNONWYCELRhoniyPair in
            HNONWYCELRhoniyPair.1.setTitle(HNONWYCELRhoniyPair.0, for: .normal)
            HNONWYCELRhoniyPair.1.setTitleColor(.black, for: .normal)
            HNONWYCELRhoniyPair.1.titleLabel?.font = HNONWYCELRhoniyBodyFont(16, HNONWYCELRhoniyWeight: .semibold)
            HNONWYCELRhoniyPair.1.layer.cornerRadius = HNONWYCELRhoniyScaleWidth(22)
            HNONWYCELRhoniyPair.1.layer.masksToBounds = true
            HNONWYCELRhoniyPair.1.backgroundColor = UIColor(white: 0.95, alpha: 1)
            HNONWYCELRhoniyPair.1.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(54)).isActive = true
        }
        HNONWYCELRhoniyGenderNovaButton.isHidden = true
        HNONWYCELRhoniyBirthTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyBirthTitleLabel.text = "Birthday"
        HNONWYCELRhoniyBirthTitleLabel.textColor = .black
        HNONWYCELRhoniyBirthTitleLabel.font = UIFont(name: "Georgia-BoldItalic", size: HNONWYCELRhoniyScaleWidth(24)) ?? HNONWYCELRhoniyTitleFont(24)
        HNONWYCELRhoniyBirthValueButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyBirthValueButton.isHidden = true
        HNONWYCELRhoniyBirthPanel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyBirthPanel.backgroundColor = UIColor(white: 0.95, alpha: 1)
        HNONWYCELRhoniyBirthPanel.layer.cornerRadius = HNONWYCELRhoniyScaleWidth(24)
        HNONWYCELRhoniyBirthPicker.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyBirthPicker.datePickerMode = .date
        HNONWYCELRhoniyBirthPicker.preferredDatePickerStyle = .wheels
        HNONWYCELRhoniyBirthPicker.maximumDate = Date()
        HNONWYCELRhoniyBirthPicker.backgroundColor = .clear
        HNONWYCELRhoniyBirthPicker.tintColor = .black
        HNONWYCELRhoniyBirthPanel.addSubview(HNONWYCELRhoniyBirthPicker)
        NSLayoutConstraint.activate([
            HNONWYCELRhoniyBirthPicker.topAnchor.constraint(equalTo: HNONWYCELRhoniyBirthPanel.topAnchor, constant: HNONWYCELRhoniyScaleHeight(4)),
            HNONWYCELRhoniyBirthPicker.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyBirthPanel.leadingAnchor, constant: HNONWYCELRhoniyScaleWidth(8)),
            HNONWYCELRhoniyBirthPicker.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyBirthPanel.trailingAnchor, constant: -HNONWYCELRhoniyScaleWidth(8)),
            HNONWYCELRhoniyBirthPicker.bottomAnchor.constraint(equalTo: HNONWYCELRhoniyBirthPanel.bottomAnchor, constant: -HNONWYCELRhoniyScaleHeight(4)),
            HNONWYCELRhoniyBirthPanel.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleHeight(230))
        ])
        HNONWYCELRhoniyProfileEnterButton.heightAnchor.constraint(equalToConstant: HNONWYCELRhoniyScaleWidth(51)).isActive = true
        [HNONWYCELRhoniyProfileGlowGap, HNONWYCELRhoniyProfileTitleLabel, HNONWYCELRhoniyProfileNoteLabel, HNONWYCELRhoniyGenderTitleLabel, HNONWYCELRhoniyGenderLane, HNONWYCELRhoniyBirthTitleLabel, HNONWYCELRhoniyBirthPanel, HNONWYCELRhoniyProfileEnterButton].forEach {
            HNONWYCELRhoniyProfileDeck.addArrangedSubview($0)
        }
        HNONWYCELRhoniyProfileDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(12), after: HNONWYCELRhoniyProfileTitleLabel)
        HNONWYCELRhoniyProfileDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(34), after: HNONWYCELRhoniyProfileNoteLabel)
        HNONWYCELRhoniyProfileDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(18), after: HNONWYCELRhoniyGenderTitleLabel)
        HNONWYCELRhoniyProfileDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(28), after: HNONWYCELRhoniyGenderLane)
        HNONWYCELRhoniyProfileDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(18), after: HNONWYCELRhoniyBirthTitleLabel)
        HNONWYCELRhoniyProfileDeck.setCustomSpacing(HNONWYCELRhoniyScaleHeight(26), after: HNONWYCELRhoniyBirthPanel)
    }

    func HNONWYCELRhoniyShiftStage(_ HNONWYCELRhoniyFreshStage: HNONWYCELRHoniyPortalStage, animated: Bool) {
        HNONWYCELRhoniyStage = HNONWYCELRhoniyFreshStage
        let HNONWYCELRhoniyWelcomeMode = HNONWYCELRhoniyFreshStage == .HNONWYCELRwelcomeGlow
        HNONWYCELRhoniyCanvasView.alpha = HNONWYCELRhoniyWelcomeMode ? 0 : 1
        HNONWYCELRhoniyAuroraView.alpha = HNONWYCELRhoniyWelcomeMode ? 0 : 1
        HNONWYCELRhoniyBackdropView.alpha = HNONWYCELRhoniyWelcomeMode ? 1 : 0
        HNONWYCELRhoniyMistView.alpha = HNONWYCELRhoniyWelcomeMode ? 1 : 0
        HNONWYCELRhoniyBackLane.isHidden = HNONWYCELRhoniyWelcomeMode
        HNONWYCELRhoniyWelcomeDeck.isHidden = !HNONWYCELRhoniyWelcomeMode
        HNONWYCELRhoniyLoginDeck.isHidden = HNONWYCELRhoniyFreshStage != .HNONWYCELRemailRunway
        HNONWYCELRhoniyPassportDeck.isHidden = HNONWYCELRhoniyFreshStage != .HNONWYCELRpassportMuse
        HNONWYCELRhoniyProfileDeck.isHidden = HNONWYCELRhoniyFreshStage != .HNONWYCELRprofileVerse
        if animated {
            UIView.animate(withDuration: 0.28) {
                self.view.layoutIfNeeded()
            }
        }
    }

    func HNONWYCELRhoniyObserveKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(HNONWYCELRhoniyKeyboardRise(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(HNONWYCELRhoniyKeyboardFall(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func HNONWYCELRhoniyKeyboardRise(_ HNONWYCELRhoniyNotice: Notification) {
        guard let HNONWYCELRhoniyFrame = HNONWYCELRhoniyNotice.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        let HNONWYCELRhoniyLift = max(HNONWYCELRhoniyFrame.height - view.safeAreaInsets.bottom + HNONWYCELRhoniyScaleHeight(12), HNONWYCELRhoniyScaleHeight(12))
        HNONWYCELRhoniyScrollView.contentInset.bottom = HNONWYCELRhoniyLift
        HNONWYCELRhoniyScrollView.verticalScrollIndicatorInsets.bottom = HNONWYCELRhoniyLift
    }

    @objc func HNONWYCELRhoniyKeyboardFall(_ HNONWYCELRhoniyNotice: Notification) {
        HNONWYCELRhoniyScrollView.contentInset.bottom = 0
        HNONWYCELRhoniyScrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
