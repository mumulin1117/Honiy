import UIKit

final class HNONWYCELRHoniyPortraitSheetController: UIViewController {

    var HNONWYCELRhoniyPhotoGlow: (() -> Void)?
    var HNONWYCELRhoniyAlbumGlow: (() -> Void)?
    private let HNONWYCELRhoniyShadeView = UIView()
    private let HNONWYCELRhoniyPanelView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        modalPresentationStyle = .overFullScreen
        view.backgroundColor = .clear
        HNONWYCELRhoniyShadeView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyShadeView.backgroundColor = UIColor.black.withAlphaComponent(0.36)
        HNONWYCELRhoniyShadeView.alpha = 0
        let HNONWYCELRhoniyCurtainTap = UITapGestureRecognizer(target: self, action: #selector(HNONWYCELRhoniyLeaveSheet))
        HNONWYCELRhoniyShadeView.addGestureRecognizer(HNONWYCELRhoniyCurtainTap)
        HNONWYCELRhoniyPanelView.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyPanelView.backgroundColor = .white
        HNONWYCELRhoniyPanelView.layer.cornerRadius = 38
        HNONWYCELRhoniyPanelView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        HNONWYCELRhoniyPanelView.transform = CGAffineTransform(translationX: 0, y: 380)
        let HNONWYCELRhoniyPhotoButton = HNONWYCELRhoniyActionPill(HNONWYCELRhoniyTitle: "Photo", HNONWYCELRhoniySymbol: "camera")
        let HNONWYCELRhoniyAlbumButton = HNONWYCELRhoniyActionPill(HNONWYCELRhoniyTitle: "Album", HNONWYCELRhoniySymbol: "photo")
        let HNONWYCELRhoniyCancelButton = UIButton(type: .system)
        HNONWYCELRhoniyCancelButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyCancelButton.setTitle("Cancel", for: .normal)
        HNONWYCELRhoniyCancelButton.setTitleColor(.black, for: .normal)
        HNONWYCELRhoniyCancelButton.titleLabel?.font = UIFont.systemFont(ofSize: UIScreen.main.bounds.width / 375 * 17, weight: .medium)
        HNONWYCELRhoniyCancelButton.backgroundColor = UIColor(white: 0.85, alpha: 1)
        HNONWYCELRhoniyCancelButton.layer.cornerRadius = UIScreen.main.bounds.width / 375 * 23
        HNONWYCELRhoniyCancelButton.addTarget(self, action: #selector(HNONWYCELRhoniyLeaveSheet), for: .touchUpInside)
        HNONWYCELRhoniyPhotoButton.addTarget(self, action: #selector(HNONWYCELRhoniyPhotoTap), for: .touchUpInside)
        HNONWYCELRhoniyAlbumButton.addTarget(self, action: #selector(HNONWYCELRhoniyAlbumTap), for: .touchUpInside)
        view.addSubview(HNONWYCELRhoniyShadeView)
        view.addSubview(HNONWYCELRhoniyPanelView)
        [HNONWYCELRhoniyPhotoButton, HNONWYCELRhoniyAlbumButton, HNONWYCELRhoniyCancelButton].forEach { HNONWYCELRhoniyPanelView.addSubview($0) }
        let HNONWYCELRhoniyScale = UIScreen.main.bounds.width / 375
        NSLayoutConstraint.activate([
            HNONWYCELRhoniyShadeView.topAnchor.constraint(equalTo: view.topAnchor),
            HNONWYCELRhoniyShadeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyShadeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HNONWYCELRhoniyShadeView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRhoniyPanelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            HNONWYCELRhoniyPanelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            HNONWYCELRhoniyPanelView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            HNONWYCELRhoniyPhotoButton.topAnchor.constraint(equalTo: HNONWYCELRhoniyPanelView.topAnchor, constant: 36 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyPhotoButton.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyPanelView.leadingAnchor, constant: 24 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyPhotoButton.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyPanelView.trailingAnchor, constant: -24 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyPhotoButton.heightAnchor.constraint(equalToConstant: 56 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyAlbumButton.topAnchor.constraint(equalTo: HNONWYCELRhoniyPhotoButton.bottomAnchor, constant: 18 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyAlbumButton.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyPhotoButton.leadingAnchor),
            HNONWYCELRhoniyAlbumButton.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyPhotoButton.trailingAnchor),
            HNONWYCELRhoniyAlbumButton.heightAnchor.constraint(equalTo: HNONWYCELRhoniyPhotoButton.heightAnchor),
            HNONWYCELRhoniyCancelButton.topAnchor.constraint(equalTo: HNONWYCELRhoniyAlbumButton.bottomAnchor, constant: 24 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyCancelButton.leadingAnchor.constraint(equalTo: HNONWYCELRhoniyPhotoButton.leadingAnchor),
            HNONWYCELRhoniyCancelButton.trailingAnchor.constraint(equalTo: HNONWYCELRhoniyPhotoButton.trailingAnchor),
            HNONWYCELRhoniyCancelButton.heightAnchor.constraint(equalToConstant: 56 * HNONWYCELRhoniyScale),
            HNONWYCELRhoniyCancelButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -18 * HNONWYCELRhoniyScale)
        ])
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.26) {
            self.HNONWYCELRhoniyShadeView.alpha = 1
            self.HNONWYCELRhoniyPanelView.transform = .identity
        }
    }

    func HNONWYCELRhoniyActionPill(HNONWYCELRhoniyTitle: String, HNONWYCELRhoniySymbol: String) -> UIButton {
        let HNONWYCELRhoniyButton = UIButton(type: .system)
        HNONWYCELRhoniyButton.translatesAutoresizingMaskIntoConstraints = false
        HNONWYCELRhoniyButton.backgroundColor = .black
        HNONWYCELRhoniyButton.layer.cornerRadius = UIScreen.main.bounds.width / 375 * 23
        HNONWYCELRhoniyButton.tintColor = .white
        if #available(iOS 15.0, *) {
            var HNONWYCELRhoniyConfig = UIButton.Configuration.plain()
            HNONWYCELRhoniyConfig.image = UIImage(systemName: HNONWYCELRhoniySymbol)
            HNONWYCELRhoniyConfig.title = HNONWYCELRhoniyTitle
            HNONWYCELRhoniyConfig.imagePadding = 12
            HNONWYCELRhoniyButton.configuration = HNONWYCELRhoniyConfig
            HNONWYCELRhoniyButton.configurationUpdateHandler = { HNONWYCELRhoniyScope in
                HNONWYCELRhoniyScope.configuration?.baseForegroundColor = .white
                HNONWYCELRhoniyScope.configuration?.background.backgroundColor = .clear
                HNONWYCELRhoniyScope.configuration?.attributedTitle = AttributedString(HNONWYCELRhoniyTitle, attributes: AttributeContainer([.font: UIFont.systemFont(ofSize: UIScreen.main.bounds.width / 375 * 17, weight: .medium)]))
            }
        } else {
            HNONWYCELRhoniyButton.setTitle(HNONWYCELRhoniyTitle, for: .normal)
            HNONWYCELRhoniyButton.setTitleColor(.white, for: .normal)
            HNONWYCELRhoniyButton.setImage(UIImage(systemName: HNONWYCELRhoniySymbol), for: .normal)
            HNONWYCELRhoniyButton.titleLabel?.font = UIFont.systemFont(ofSize: UIScreen.main.bounds.width / 375 * 17, weight: .medium)
        }
        return HNONWYCELRhoniyButton
    }

    @objc func HNONWYCELRhoniyPhotoTap() {
        dismiss(animated: false) {
            self.HNONWYCELRhoniyPhotoGlow?()
        }
    }

    @objc func HNONWYCELRhoniyAlbumTap() {
        dismiss(animated: false) {
            self.HNONWYCELRhoniyAlbumGlow?()
        }
    }

    @objc func HNONWYCELRhoniyLeaveSheet() {
        UIView.animate(withDuration: 0.2, animations: {
            self.HNONWYCELRhoniyShadeView.alpha = 0
            self.HNONWYCELRhoniyPanelView.transform = CGAffineTransform(translationX: 0, y: 380)
        }, completion: { _ in
            self.dismiss(animated: false)
        })
    }
}
