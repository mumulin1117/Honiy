//
//  HNONWYCELRStyleSparkNotifier.swift
//  VoioDeaniy
//
//  Created by  on 2025/12/10.
//

import UIKit

// MARK: - HNONWYCELRStyleSparkNotifier (Custom Toast Notification System)
/// 结合 Honiy 应用的“风格火花”主题，实现一个原生的顶部提示器。
class HNONWYCELRStyleSparkNotifier {
    
    enum HNONWYCELRState {
        case HNONWYCELRsuccess
        case HNONWYCELRerror
        
        var HNONWYCELRgroundColor: UIColor {
            switch self {
            case .HNONWYCELRsuccess:
                return UIColor(red: 0.20, green: 0.70, blue: 0.30, alpha: 0.95) // Dark Green
            case .HNONWYCELRerror:
                return UIColor(red: 0.90, green: 0.30, blue: 0.30, alpha: 0.95) // Dark Red
            }
        }
        
        var HNONWYCELRicon: UIImage? {
            switch self {
            case .HNONWYCELRsuccess:
                // System checkmark icon
                return UIImage(systemName: "checkmark.circle.fill")
            case .HNONWYCELRerror:
                // System cross icon
                return UIImage(systemName: "xmark.octagon.fill")
            }
        }
    }
    
    /// 显示一个 StyleSpark 顶部提示。
    /// - Parameters:
    ///   - message: 要显示的文本消息。
    ///   - state: 提示器的状态（成功或错误）。
    ///   - viewController: 提示器将显示在其视图顶部的 UIViewController。
    static func HNONWYCELRshow(HNONWYCELRmessage: String, HNONWYCELRstate: HNONWYCELRState, HNONWYCELRin viewController: UIViewController) {
      
        let HNONWYCELRdisplayDuration: TimeInterval = 3.0
        let HNONWYCELRanimationDuration: TimeInterval = 0.4
        
        let HNONWYCELRsuperview = viewController.view!
        let HNONWYCELRsafeAreaTop = viewController.view.safeAreaInsets.top
        
        // 2. 创建提示视图 (Toast View)
        let HNONWYCELRsparkView = UIView()
        HNONWYCELRsparkView.backgroundColor = HNONWYCELRstate.HNONWYCELRgroundColor
        HNONWYCELRsparkView.layer.cornerRadius = 8
        HNONWYCELRsparkView.clipsToBounds = true
        HNONWYCELRsparkView.translatesAutoresizingMaskIntoConstraints = false
        
        // 3. 创建图标
        let HNONWYCELRiconView = UIImageView()
        HNONWYCELRiconView.image = HNONWYCELRstate.HNONWYCELRicon?.withTintColor(.white, renderingMode: .alwaysOriginal)
        HNONWYCELRiconView.contentMode = .scaleAspectFit
        HNONWYCELRiconView.translatesAutoresizingMaskIntoConstraints = false
        
        // 4. 创建消息标签
        let HNONWYCELRgeLabel = UILabel()
        HNONWYCELRgeLabel.text = HNONWYCELRmessage
        HNONWYCELRgeLabel.textColor = .white
        HNONWYCELRgeLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        HNONWYCELRgeLabel.numberOfLines = 0
        HNONWYCELRgeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 5. 将子视图添加到提示视图
        HNONWYCELRsparkView.addSubview(HNONWYCELRiconView)
        HNONWYCELRsparkView.addSubview(HNONWYCELRgeLabel)
        HNONWYCELRsuperview.addSubview(HNONWYCELRsparkView)
        
        // 6. 设置初始约束和动画位移
        let HNONWYCELRheight: CGFloat = 50.0
        
        // 初始Y约束：将视图放置在屏幕外
        let HNONWYCELRConstraint = HNONWYCELRsparkView.topAnchor.constraint(equalTo: HNONWYCELRsuperview.topAnchor, constant: -HNONWYCELRheight - 10)
        
        NSLayoutConstraint.activate([
            // Toast View 约束
            HNONWYCELRConstraint,
            HNONWYCELRsparkView.centerXAnchor.constraint(equalTo: HNONWYCELRsuperview.centerXAnchor),
            HNONWYCELRsparkView.heightAnchor.constraint(greaterThanOrEqualToConstant: HNONWYCELRheight),
            HNONWYCELRsparkView.widthAnchor.constraint(lessThanOrEqualTo: HNONWYCELRsuperview.widthAnchor, constant: -40),
            HNONWYCELRsparkView.leadingAnchor.constraint(greaterThanOrEqualTo: HNONWYCELRsuperview.leadingAnchor, constant: 20),
            HNONWYCELRsparkView.trailingAnchor.constraint(lessThanOrEqualTo: HNONWYCELRsuperview.trailingAnchor, constant: -20),
            
            // Icon View 约束
            HNONWYCELRiconView.leadingAnchor.constraint(equalTo: HNONWYCELRsparkView.leadingAnchor, constant: 12),
            HNONWYCELRiconView.centerYAnchor.constraint(equalTo: HNONWYCELRsparkView.centerYAnchor),
            HNONWYCELRiconView.widthAnchor.constraint(equalToConstant: 24),
            HNONWYCELRiconView.heightAnchor.constraint(equalToConstant: 24),
            
            // Message Label 约束
            HNONWYCELRgeLabel.leadingAnchor.constraint(equalTo: HNONWYCELRiconView.trailingAnchor, constant: 8),
            HNONWYCELRgeLabel.trailingAnchor.constraint(equalTo: HNONWYCELRsparkView.trailingAnchor, constant: -12),
            HNONWYCELRgeLabel.topAnchor.constraint(equalTo: HNONWYCELRsparkView.topAnchor, constant: 12),
            HNONWYCELRgeLabel.bottomAnchor.constraint(equalTo: HNONWYCELRsparkView.bottomAnchor, constant: -12)
        ])
        
        // 7. 动画：滑入
        HNONWYCELRsuperview.layoutIfNeeded()
        HNONWYCELRConstraint.constant = HNONWYCELRsafeAreaTop + 10 // 滑入到安全区域下方 10 点
        
        UIView.animate(withDuration: HNONWYCELRanimationDuration, delay: 0, options: .curveEaseOut, animations: {
            HNONWYCELRsuperview.layoutIfNeeded()
        }, completion: { _ in
            // 8. 动画：保持并滑出
            DispatchQueue.main.asyncAfter(deadline: .now() + HNONWYCELRdisplayDuration) {
                HNONWYCELRConstraint.constant = -HNONWYCELRsparkView.frame.height - 10 // 再次移出屏幕
                
                UIView.animate(withDuration: HNONWYCELRanimationDuration, delay: 0, options: .curveEaseIn, animations: {
                    HNONWYCELRsuperview.layoutIfNeeded()
                }, completion: { _ in
                    HNONWYCELRsparkView.removeFromSuperview()
                })
            }
        })
    }
}

