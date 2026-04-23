import UIKit
import AuthenticationServices
import AVFoundation
import Photos

enum HNONWYCELRHoniyPortalStage {
    case HNONWYCELRwelcomeGlow
    case HNONWYCELRemailRunway
    case HNONWYCELRpassportMuse
    case HNONWYCELRprofileVerse
}

enum HNONWYCELRHoniyPortalRoute {
    case HNONWYCELRquickGlow
    case HNONWYCELRsignupGlow
    case HNONWYCELRfirstMuse
}

final class HNONWYCELRLookbookCreationControler: UIViewController, UITextFieldDelegate, ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let HNONWYCELRhoniyCanvasView = UIView()
    let HNONWYCELRhoniyAuroraView = UIView()
    let HNONWYCELRhoniyAuroraLayer = CAGradientLayer()
    let HNONWYCELRhoniyBackdropView = UIImageView()
    let HNONWYCELRhoniyMistView = UIView()
    let HNONWYCELRhoniyMistLayer = CAGradientLayer()
    let HNONWYCELRhoniyScrollView = UIScrollView()
    let HNONWYCELRhoniyContentView = UIView()
    let HNONWYCELRhoniyPortalStack = UIStackView()
    let HNONWYCELRhoniyBackLane = UIView()
    let HNONWYCELRhoniyBackButton = UIButton(type: .custom)
    let HNONWYCELRhoniyWelcomeDeck = UIStackView()
    let HNONWYCELRhoniyWelcomeActionRow = UIStackView()
    let HNONWYCELRhoniyWelcomeIconView = UIImageView()
    let HNONWYCELRhoniyQuickLoginButton = UIButton(type: .custom)
    let HNONWYCELRhoniyAppleButton = UIButton(type: .custom)
    let HNONWYCELRhoniySignupButton = UIButton(type: .custom)
    let HNONWYCELRhoniyLoginDeck = UIStackView()
    let HNONWYCELRhoniyLoginIconView = UIImageView()
    let HNONWYCELRhoniyLoginTitleLabel = UILabel()
    let HNONWYCELRhoniyLoginGlowGap = UIView()
    let HNONWYCELRhoniyLoginEmailDock = HNONWYCELRHoniyPassportDockView(HNONWYCELRhoniyGlyphName: "HNONWYemail", HNONWYCELRhoniyTitle: "Email", HNONWYCELRhoniyHint: "Enter email address")
    let HNONWYCELRhoniyLoginPasswordDock = HNONWYCELRHoniyPassportDockView(HNONWYCELRhoniyGlyphName: "HNONWYpassword", HNONWYCELRhoniyTitle: "Password", HNONWYCELRhoniyHint: "Enter password", HNONWYCELRhoniyShieldMode: true)
    let HNONWYCELRhoniyLoginConsentDeck = HNONWYCELRHoniyPassportConsentDeck()
    let HNONWYCELRhoniyLoginActionButton = UIButton(type: .custom)
    let HNONWYCELRhoniyPassportDeck = UIStackView()
    let HNONWYCELRhoniyPassportGlowGap = UIView()
    let HNONWYCELRhoniyPassportTitleLabel = UILabel()
    let HNONWYCELRhoniyAvatarShellButton = UIButton(type: .custom)
    let HNONWYCELRhoniyAvatarFrameView = UIView()
    let HNONWYCELRhoniyAvatarImageView = UIImageView()
    let HNONWYCELRhoniyAvatarLensView = UIImageView()
    let HNONWYCELRhoniyPassportNameDock = HNONWYCELRHoniyPassportDockView(HNONWYCELRhoniyGlyphName: "HNONWYname", HNONWYCELRhoniyTitle: "Name", HNONWYCELRhoniyHint: "Enter your nickname")
    let HNONWYCELRhoniyPassportEmailDock = HNONWYCELRHoniyPassportDockView(HNONWYCELRhoniyGlyphName: "HNONWYemail", HNONWYCELRhoniyTitle: "Email", HNONWYCELRhoniyHint: "Enter email address")
    let HNONWYCELRhoniyPassportPasswordDock = HNONWYCELRHoniyPassportDockView(HNONWYCELRhoniyGlyphName: "HNONWYpassword", HNONWYCELRhoniyTitle: "Password", HNONWYCELRhoniyHint: "Enter password", HNONWYCELRhoniyShieldMode: true)
    let HNONWYCELRhoniyPassportConsentDeck = HNONWYCELRHoniyPassportConsentDeck()
    let HNONWYCELRhoniyPassportNextButton = UIButton(type: .custom)
    let HNONWYCELRhoniyProfileDeck = UIStackView()
    let HNONWYCELRhoniyProfileGlowGap = UIView()
    let HNONWYCELRhoniyProfileTitleLabel = UILabel()
    let HNONWYCELRhoniyProfileNoteLabel = UILabel()
    let HNONWYCELRhoniyGenderLane = UIStackView()
    let HNONWYCELRhoniyGenderFrostButton = UIButton(type: .custom)
    let HNONWYCELRhoniyGenderMuseButton = UIButton(type: .custom)
    let HNONWYCELRhoniyGenderNovaButton = UIButton(type: .custom)
    let HNONWYCELRhoniyBirthPanel = UIView()
    let HNONWYCELRhoniyBirthTitleLabel = UILabel()
    let HNONWYCELRhoniyBirthValueButton = UIButton(type: .system)
    let HNONWYCELRhoniyBirthPicker = UIDatePicker()
    let HNONWYCELRhoniyProfileEnterButton = UIButton(type: .custom)
    let HNONWYCELRhoniySpinner = UIActivityIndicatorView(style: .large)
    var HNONWYCELRhoniyStage: HNONWYCELRHoniyPortalStage = .HNONWYCELRwelcomeGlow
    var HNONWYCELRhoniyRoute: HNONWYCELRHoniyPortalRoute = .HNONWYCELRquickGlow
    var HNONWYCELRhoniyConsentChoice = true
    var HNONWYCELRhoniyPortraitImage: UIImage?
    var HNONWYCELRhoniyPassportDraft = HNONWYCELRHoniyPassportDraft()

    override func viewDidLoad() {
        super.viewDidLoad()
        HNONWYCELRhoniyBuildPortal()
        HNONWYCELRhoniyBindPortal()
        HNONWYCELRhoniySeedLocalPassport()
        HNONWYCELRhoniyShiftStage(.HNONWYCELRwelcomeGlow, animated: false)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        HNONWYCELRhoniyAuroraLayer.frame = HNONWYCELRhoniyAuroraView.bounds
        HNONWYCELRhoniyMistLayer.frame = HNONWYCELRhoniyMistView.bounds
        HNONWYCELRhoniyPolishGlowButton(HNONWYCELRhoniyLoginActionButton, HNONWYCELRhoniyTitle: "Login")
        HNONWYCELRhoniyPolishGlowButton(HNONWYCELRhoniyPassportNextButton, HNONWYCELRhoniyTitle: "Next")
        HNONWYCELRhoniyPolishGlowButton(HNONWYCELRhoniyProfileEnterButton, HNONWYCELRhoniyTitle: "Enter")
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
