import UIKit

final class HNONWYCELRHoniyPassportConsentDeck: UIView {

    let HNONWYCELRhoniyCheckButton = UIButton(type: .custom)
    let HNONWYCELRhoniyTermsButton = UIButton(type: .system)
    let HNONWYCELRhoniyPrivacyButton = UIButton(type: .system)
    private let HNONWYCELRhoniyLeadLineLabel = UILabel()
    private let HNONWYCELRhoniyTailLineLabel = UILabel()
    private let HNONWYCELRhoniyUpperLane = UIStackView()
    private let HNONWYCELRhoniyLowerLane = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        let HNONWYCELRhoniyScale = UIScreen.main.bounds.width / 375
        HNONWYCELRhoniyCheckButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyCheckButton.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYunsel"), for: .normal)
        HNONWYCELRhoniyCheckButton.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYsel"), for: .selected)
        HNONWYCELRhoniyLeadLineLabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyLeadLineLabel.text = "By registering, you agree to the"
        HNONWYCELRhoniyLeadLineLabel.textColor = UIColor.black.withAlphaComponent(0.86)
        HNONWYCELRhoniyLeadLineLabel.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .medium)
        HNONWYCELRhoniyTermsButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyTermsButton.setTitle("<Terms of Use>", for: .normal)
        HNONWYCELRhoniyTermsButton.setTitleColor(.black, for: .normal)
        HNONWYCELRhoniyTermsButton.titleLabel?.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .heavy)
        HNONWYCELRhoniyTailLineLabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyTailLineLabel.text = "and"
        HNONWYCELRhoniyTailLineLabel.textColor = UIColor.black.withAlphaComponent(0.86)
        HNONWYCELRhoniyTailLineLabel.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .medium)
        HNONWYCELRhoniyPrivacyButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyPrivacyButton.setTitle("<Privacy Policy>.", for: .normal)
        HNONWYCELRhoniyPrivacyButton.setTitleColor(.black, for: .normal)
        HNONWYCELRhoniyPrivacyButton.titleLabel?.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .heavy)
        HNONWYCELRhoniyUpperLane.axis = .horizontal
        HNONWYCELRhoniyUpperLane.spacing = 3 * HNONWYCELRhoniyScale
        HNONWYCELRhoniyUpperLane.alignment = .center
        HNONWYCELRhoniyUpperLane.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyLowerLane.axis = .horizontal
        HNONWYCELRhoniyLowerLane.spacing = 3 * HNONWYCELRhoniyScale
        HNONWYCELRhoniyLowerLane.alignment = .center
        HNONWYCELRhoniyLowerLane.translatesAutoresizingMaskIntoConstraints = false
        [HNONWYCELRhoniyLeadLineLabel, HNONWYCELRhoniyTermsButton].forEach { HNONWYCELRhoniyUpperLane.addArrangedSubview($0) }
        [HNONWYCELRhoniyTailLineLabel, HNONWYCELRhoniyPrivacyButton].forEach { HNONWYCELRhoniyLowerLane.addArrangedSubview($0) }
        addSubview(HNONWYCELRhoniyCheckButton)
        addSubview(HNONWYCELRhoniyUpperLane)
        addSubview(HNONWYCELRhoniyLowerLane)
        NSLayoutConstraint.activate([
            HNONWYCELRhoniyCheckButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            HNONWYCELRhoniyCheckButton.topAnchor.constraint(equalTo: topAnchor),
            HNONWYCELRhoniyCheckButton.widthAnchor.constraint(equalToConstant: 24 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyCheckButton.heightAnchor.constraint(equalTo: HNONWYCELRhoniyCheckButton.widthAnchor),
            HNONWYCELRhoniyUpperLane.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyCheckButton.trailingAnchor, constant: 8 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyUpperLane.topAnchor.constraint(equalTo: topAnchor),
            HNONWYCELRhoniyUpperLane.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            HNONWYCELRhoniyLowerLane.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyUpperLane.leadingAnchor),
            HNONWYCELRhoniyLowerLane.topAnchor.constraint(equalTo: HNONWYCELRhoniyUpperLane.bottomAnchor, constant: 1 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyLowerLane.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            bottomAnchor.constraint(equalTo: HNONWYCELRhoniyLowerLane.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
