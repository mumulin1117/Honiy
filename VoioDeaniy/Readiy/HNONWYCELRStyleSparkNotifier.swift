
import UIKit

class HNONWYCELRStyleSparkNotifier {
    
    enum HNONWYCELRState {
        case HNONWYCELRsuccess
        case HNONWYCELRerror
        
        var HNONWYCELRgroundColor: UIColor {
            switch self {
            case .HNONWYCELRsuccess:
                return UIColor(red: 0.20, green: 0.70, blue: 0.30, alpha: 0.95)
            case .HNONWYCELRerror:
                return UIColor(red: 0.90, green: 0.30, blue: 0.30, alpha: 0.95)
            }
        }
        
        var HNONWYCELRicon: UIImage? {
            switch self {
            case .HNONWYCELRsuccess:
                return UIImage(systemName: "checkmark.circle.fill")
            case .HNONWYCELRerror:
                return UIImage(systemName: "xmark.octagon.fill")
            }
        }
    }
    
   
    static func HNONWYCELRshow(HNONWYCELRcaption: String, HNONWYCELRstate: HNONWYCELRState, HNONWYCELRin viewController: UIViewController) {
      
        let HNONWYCELRdisplayDuration: TimeInterval = 3.0
        let HNONWYCELRanimationDuration: TimeInterval = 0.4
        
        let HNONWYCELRsuperview = viewController.view!
        let HNONWYCELRsafeAreaTop = viewController.view.safeAreaInsets.top
        
      
        let HNONWYCELRsparkView = UIView()
        HNONWYCELRsparkView.backgroundColor = HNONWYCELRstate.HNONWYCELRgroundColor
        HNONWYCELRsparkView.layer.cornerRadius = 8
        HNONWYCELRsparkView.clipsToBounds = true
        HNONWYCELRsparkView.translatesAutoresizingMaskIntoConstraints = false
        
       
        let HNONWYCELRiconView = UIImageView()
        HNONWYCELRiconView.image = HNONWYCELRstate.HNONWYCELRicon?.withTintColor(.white, renderingMode: .alwaysOriginal)
        HNONWYCELRiconView.contentMode = .scaleAspectFit
        HNONWYCELRiconView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let HNONWYCELRgeLabel = UILabel()
        HNONWYCELRgeLabel.text = HNONWYCELRcaption
        HNONWYCELRgeLabel.textColor = .white
        HNONWYCELRgeLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        HNONWYCELRgeLabel.numberOfLines = 0
        HNONWYCELRgeLabel.translatesAutoresizingMaskIntoConstraints = false
        
       
        HNONWYCELRsparkView.addSubview(HNONWYCELRiconView)
        HNONWYCELRsparkView.addSubview(HNONWYCELRgeLabel)
        HNONWYCELRsuperview.addSubview(HNONWYCELRsparkView)
        
        
        let HNONWYCELRheight: CGFloat = 50.0
        
        
        let HNONWYCELRConstraint = HNONWYCELRsparkView.topAnchor.constraint(equalTo: HNONWYCELRsuperview.topAnchor, constant: -HNONWYCELRheight - 10)
        
        NSLayoutConstraint.activate([
            
            HNONWYCELRConstraint,
            HNONWYCELRsparkView.centerXAnchor.constraint(equalTo: HNONWYCELRsuperview.centerXAnchor),
            HNONWYCELRsparkView.heightAnchor.constraint(greaterThanOrEqualToConstant: HNONWYCELRheight),
            HNONWYCELRsparkView.widthAnchor.constraint(lessThanOrEqualTo: HNONWYCELRsuperview.widthAnchor, constant: -40),
            HNONWYCELRsparkView.leadingAnchor.constraint(greaterThanOrEqualTo: HNONWYCELRsuperview.leadingAnchor, constant: 20),
            HNONWYCELRsparkView.trailingAnchor.constraint(lessThanOrEqualTo: HNONWYCELRsuperview.trailingAnchor, constant: -20),
            
            
            HNONWYCELRiconView.leadingAnchor.constraint(equalTo: HNONWYCELRsparkView.leadingAnchor, constant: 12),
            HNONWYCELRiconView.centerYAnchor.constraint(equalTo: HNONWYCELRsparkView.centerYAnchor),
            HNONWYCELRiconView.widthAnchor.constraint(equalToConstant: 24),
            HNONWYCELRiconView.heightAnchor.constraint(equalToConstant: 24),
            
            
            HNONWYCELRgeLabel.leadingAnchor.constraint(equalTo: HNONWYCELRiconView.trailingAnchor, constant: 8),
            HNONWYCELRgeLabel.trailingAnchor.constraint(equalTo: HNONWYCELRsparkView.trailingAnchor, constant: -12),
            HNONWYCELRgeLabel.topAnchor.constraint(equalTo: HNONWYCELRsparkView.topAnchor, constant: 12),
            HNONWYCELRgeLabel.bottomAnchor.constraint(equalTo: HNONWYCELRsparkView.bottomAnchor, constant: -12)
        ])
        
      
        HNONWYCELRsuperview.layoutIfNeeded()
        HNONWYCELRConstraint.constant = HNONWYCELRsafeAreaTop + 10
        
        UIView.animate(withDuration: HNONWYCELRanimationDuration, delay: 0, options: .curveEaseOut, animations: {
            HNONWYCELRsuperview.layoutIfNeeded()
        }, completion: { _ in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + HNONWYCELRdisplayDuration) {
                HNONWYCELRConstraint.constant = -HNONWYCELRsparkView.frame.height - 10
                
                UIView.animate(withDuration: HNONWYCELRanimationDuration, delay: 0, options: .curveEaseIn, animations: {
                    HNONWYCELRsuperview.layoutIfNeeded()
                }, completion: { _ in
                    HNONWYCELRsparkView.removeFromSuperview()
                })
            }
        })
    }
}
