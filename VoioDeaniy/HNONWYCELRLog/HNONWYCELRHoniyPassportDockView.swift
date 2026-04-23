import UIKit

final class HNONWYCELRHoniyPassportDockView: UIView {

    let textField = UITextField()
    private let HNONWYCELRhoniyGlyphShell = UIView()
    private let HNONWYCELRhoniyGlyphView = UIImageView()
    private let HNONWYCELRhoniyTitleLabel = UILabel()
    private let HNONWYCELRhoniyFieldShell = UIView()

    init(HNONWYCELRhoniyGlyphName: String, HNONWYCELRhoniyTitle: String, HNONWYCELRhoniyHint: String, HNONWYCELRhoniyShieldMode: Bool = false) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        let HNONWYCELRhoniyScale = UIScreen.main.bounds.width / 375
        HNONWYCELRhoniyGlyphShell.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyGlyphShell.backgroundColor = .black
        HNONWYCELRhoniyGlyphShell.layer.cornerRadius = 17 * HNONWYCELRhoniyScale
        HNONWYCELRhoniyGlyphView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyGlyphView.image = UIImage(named: HNONWYCELRhoniyGlyphName)
        HNONWYCELRhoniyGlyphView.contentMode = .scaleAspectFit
        HNONWYCELRhoniyGlyphView.tintColor = .white
        HNONWYCELRhoniyTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyTitleLabel.text = HNONWYCELRhoniyTitle
        HNONWYCELRhoniyTitleLabel.textColor = .black
        HNONWYCELRhoniyTitleLabel.font = UIFont.systemFont(ofSize: 19 * HNONWYCELRhoniyScale, weight: .black)
        HNONWYCELRhoniyFieldShell.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyFieldShell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        HNONWYCELRhoniyFieldShell.layer.cornerRadius = 22 * HNONWYCELRhoniyScale
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .none
        textField.backgroundColor = .clear
        textField.textColor = .black
        textField.tintColor = .black
        textField.font = UIFont.systemFont(ofSize: 16 * HNONWYCELRhoniyScale, weight: .semibold)
        textField.attributedPlaceholder = NSAttributedString(string: HNONWYCELRhoniyHint, attributes: [.foregroundColor: UIColor(white: 0.72, alpha: 1), .font: UIFont.systemFont(ofSize: 16 * HNONWYCELRhoniyScale, weight: .semibold)])
        textField.placeholder = HNONWYCELRhoniyHint
        textField.isSecureTextEntry = HNONWYCELRhoniyShieldMode
        addSubview(HNONWYCELRhoniyGlyphShell)
        HNONWYCELRhoniyGlyphShell.addSubview(HNONWYCELRhoniyGlyphView)
        addSubview(HNONWYCELRhoniyTitleLabel)
        addSubview(HNONWYCELRhoniyFieldShell)
        HNONWYCELRhoniyFieldShell.addSubview(textField)
        NSLayoutConstraint.activate([
            HNONWYCELRhoniyGlyphShell.leadingAnchor.constraint(equalTo: leadingAnchor),
            HNONWYCELRhoniyGlyphShell.topAnchor.constraint(equalTo: topAnchor),
            HNONWYCELRhoniyGlyphShell.widthAnchor.constraint(equalToConstant: 34 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyGlyphShell.heightAnchor.constraint(equalTo: HNONWYCELRhoniyGlyphShell.widthAnchor),
            HNONWYCELRhoniyGlyphView.centerXAnchor.constraint(equalTo: HNONWYCELRhoniyGlyphShell.centerXAnchor),
            HNONWYCELRhoniyGlyphView.centerYAnchor.constraint(equalTo: HNONWYCELRhoniyGlyphShell.centerYAnchor),
            HNONWYCELRhoniyGlyphView.widthAnchor.constraint(equalToConstant: 16 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyGlyphView.heightAnchor.constraint(equalTo: HNONWYCELRhoniyGlyphView.widthAnchor),
            HNONWYCELRhoniyTitleLabel.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyGlyphShell.trailingAnchor, constant: 13 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyTitleLabel.centerYAnchor.constraint(equalTo: HNONWYCELRhoniyGlyphShell.centerYAnchor),
            HNONWYCELRhoniyTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            HNONWYCELRhoniyFieldShell.topAnchor.constraint(equalTo: HNONWYCELRhoniyGlyphShell.bottomAnchor, constant: 14 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyFieldShell.leadingAnchor.constraint(equalTo: leadingAnchor),
            HNONWYCELRhoniyFieldShell.trailingAnchor.constraint(equalTo: trailingAnchor),
            HNONWYCELRhoniyFieldShell.bottomAnchor.constraint(equalTo: bottomAnchor),
            HNONWYCELRhoniyFieldShell.heightAnchor.constraint(equalToConstant: 58 * HNONWYCELRhoniyScale),
            textField.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyFieldShell.leadingAnchor, constant: 20 * HNONWYCELRhoniyScale),
            textField.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyFieldShell.trailingAnchor, constant: -20 * HNONWYCELRhoniyScale),
            textField.topAnchor.constraint(equalTo: HNONWYCELRhoniyFieldShell.topAnchor),
            textField.bottomAnchor.constraint(equalTo: HNONWYCELRhoniyFieldShell.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
