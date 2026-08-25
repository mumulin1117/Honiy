import UIKit

final class HNONWYCELRHoniyPassportConsentDeck: UIView {

    let HNONWYCELminimalStyling = UIButton(type: .custom)
    let HNONWYCELclassicStyling = UIButton(type: .system)
    let HNONWYCELromanticStyling = UIButton(type: .system)
    private let HNONWYCELRhoniyLeadLineLabel = UILabel()
    private let HNONWYCELRhoniyTailLineLabel = UILabel()
    private let HNONWYCELRhoniyUpperLane = UIStackView()
    private let HNONWYCELRhoniyLowerLane = UIStackView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        let HNONWYCELRhoniyScale = UIScreen.main.bounds.width / 375
        HNONWYCELminimalStyling.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELminimalStyling.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYunsel"), for: .normal)
        HNONWYCELminimalStyling.setImage(HNONWYCELRcolorfusioning.HNONWYCELRgarmentripple(HNONWYCELRpaletteform: "HNONWYsel"), for: .selected)
        HNONWYCELRhoniyLeadLineLabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyLeadLineLabel.text = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "Bxyx xrxexgxixsxtxexrxixnxgx,x xyxoxux xaxgxrxexex xtxox xtxhxe")
        HNONWYCELRhoniyLeadLineLabel.textColor = UIColor.black.withAlphaComponent(0.86)
        HNONWYCELRhoniyLeadLineLabel.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .medium)
        HNONWYCELclassicStyling.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELclassicStyling.setTitle(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "<xTxexrxmxsx xoxfx xUxsxex>"), for: .normal)
        HNONWYCELclassicStyling.setTitleColor(.black, for: .normal)
        HNONWYCELclassicStyling.titleLabel?.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .heavy)
        HNONWYCELRhoniyTailLineLabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyTailLineLabel.text = AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "axnxd")
        HNONWYCELRhoniyTailLineLabel.textColor = UIColor.black.withAlphaComponent(0.86)
        HNONWYCELRhoniyTailLineLabel.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .medium)
        HNONWYCELromanticStyling.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELromanticStyling.setTitle(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "<xPxrxixvxaxcxyx xPxoxlxixcxyx>x."), for: .normal)
        HNONWYCELromanticStyling.setTitleColor(.black, for: .normal)
        HNONWYCELromanticStyling.titleLabel?.font = UIFont.systemFont(ofSize: 12.8 * HNONWYCELRhoniyScale, weight: .heavy)
        HNONWYCELRhoniyUpperLane.axis = .horizontal
        HNONWYCELRhoniyUpperLane.spacing = 3 * HNONWYCELRhoniyScale
        HNONWYCELRhoniyUpperLane.alignment = .center
        HNONWYCELRhoniyUpperLane.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyLowerLane.axis = .horizontal
        HNONWYCELRhoniyLowerLane.spacing = 3 * HNONWYCELRhoniyScale
        HNONWYCELRhoniyLowerLane.alignment = .center
        HNONWYCELRhoniyLowerLane.translatesAutoresizingMaskIntoConstraints = false
        [HNONWYCELRhoniyLeadLineLabel, HNONWYCELclassicStyling].forEach { HNONWYCELRhoniyUpperLane.addArrangedSubview($0) }
        [HNONWYCELRhoniyTailLineLabel, HNONWYCELromanticStyling].forEach { HNONWYCELRhoniyLowerLane.addArrangedSubview($0) }
        addSubview(HNONWYCELminimalStyling)
        addSubview(HNONWYCELRhoniyUpperLane)
        addSubview(HNONWYCELRhoniyLowerLane)
        NSLayoutConstraint.activate([
            HNONWYCELminimalStyling.leadingAnchor.constraint(equalTo: leadingAnchor),
            HNONWYCELminimalStyling.topAnchor.constraint(equalTo: topAnchor),
            HNONWYCELminimalStyling.widthAnchor.constraint(equalToConstant: 24 * HNONWYCELRhoniyScale),
            HNONWYCELminimalStyling.heightAnchor.constraint(equalTo: HNONWYCELminimalStyling.widthAnchor),
            HNONWYCELRhoniyUpperLane.leadingAnchor.constraint(equalTo: HNONWYCELminimalStyling.trailingAnchor, constant: 8 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyUpperLane.topAnchor.constraint(equalTo: topAnchor),
            HNONWYCELRhoniyUpperLane.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            HNONWYCELRhoniyLowerLane.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyUpperLane.leadingAnchor),
            HNONWYCELRhoniyLowerLane.topAnchor.constraint(equalTo: HNONWYCELRhoniyUpperLane.bottomAnchor, constant: 1 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyLowerLane.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor),
            bottomAnchor.constraint(equalTo: HNONWYCELRhoniyLowerLane.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError(AppDelegate.HNONWYCELRunravelEncrypted(HNONWYCELRLandmarks: "ixnxixtx(xcxoxdxexrx:x)x xhxaxsx xnxoxtx xbxexexnx xixmxpxlxexmxexnxtxexd"))
    }
}
