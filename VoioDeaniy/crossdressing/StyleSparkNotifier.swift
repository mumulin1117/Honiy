//
//  StyleSparkNotifier.swift
//  VoioDeaniy
//
//  Created by  on 2025/12/10.
//

import UIKit

// MARK: - StyleSparkNotifier (Custom Toast Notification System)
/// 结合 Honiy 应用的“风格火花”主题，实现一个原生的顶部提示器。
class StyleSparkNotifier {
    
    enum State {
        case success
        case error
        
        var backgroundColor: UIColor {
            switch self {
            case .success:
                return UIColor(red: 0.20, green: 0.70, blue: 0.30, alpha: 0.95) // Dark Green
            case .error:
                return UIColor(red: 0.90, green: 0.30, blue: 0.30, alpha: 0.95) // Dark Red
            }
        }
        
        var icon: UIImage? {
            switch self {
            case .success:
                // System checkmark icon
                return UIImage(systemName: "checkmark.circle.fill")
            case .error:
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
    static func show(message: String, state: State, in viewController: UIViewController) {
        
        // 1. 定义动画参数
        let displayDuration: TimeInterval = 3.0
        let animationDuration: TimeInterval = 0.4
        
        let superview = viewController.view!
        let safeAreaTop = viewController.view.safeAreaInsets.top
        
        // 2. 创建提示视图 (Toast View)
        let sparkView = UIView()
        sparkView.backgroundColor = state.backgroundColor
        sparkView.layer.cornerRadius = 8
        sparkView.clipsToBounds = true
        sparkView.translatesAutoresizingMaskIntoConstraints = false
        
        // 3. 创建图标
        let iconView = UIImageView()
        iconView.image = state.icon?.withTintColor(.white, renderingMode: .alwaysOriginal)
        iconView.contentMode = .scaleAspectFit
        iconView.translatesAutoresizingMaskIntoConstraints = false
        
        // 4. 创建消息标签
        let messageLabel = UILabel()
        messageLabel.text = message
        messageLabel.textColor = .white
        messageLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        messageLabel.numberOfLines = 0
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 5. 将子视图添加到提示视图
        sparkView.addSubview(iconView)
        sparkView.addSubview(messageLabel)
        superview.addSubview(sparkView)
        
        // 6. 设置初始约束和动画位移
        let height: CGFloat = 50.0
        
        // 初始Y约束：将视图放置在屏幕外
        let topConstraint = sparkView.topAnchor.constraint(equalTo: superview.topAnchor, constant: -height - 10)
        
        NSLayoutConstraint.activate([
            // Toast View 约束
            topConstraint,
            sparkView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
            sparkView.heightAnchor.constraint(greaterThanOrEqualToConstant: height),
            sparkView.widthAnchor.constraint(lessThanOrEqualTo: superview.widthAnchor, constant: -40),
            sparkView.leadingAnchor.constraint(greaterThanOrEqualTo: superview.leadingAnchor, constant: 20),
            sparkView.trailingAnchor.constraint(lessThanOrEqualTo: superview.trailingAnchor, constant: -20),
            
            // Icon View 约束
            iconView.leadingAnchor.constraint(equalTo: sparkView.leadingAnchor, constant: 12),
            iconView.centerYAnchor.constraint(equalTo: sparkView.centerYAnchor),
            iconView.widthAnchor.constraint(equalToConstant: 24),
            iconView.heightAnchor.constraint(equalToConstant: 24),
            
            // Message Label 约束
            messageLabel.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 8),
            messageLabel.trailingAnchor.constraint(equalTo: sparkView.trailingAnchor, constant: -12),
            messageLabel.topAnchor.constraint(equalTo: sparkView.topAnchor, constant: 12),
            messageLabel.bottomAnchor.constraint(equalTo: sparkView.bottomAnchor, constant: -12)
        ])
        
        // 7. 动画：滑入
        superview.layoutIfNeeded()
        topConstraint.constant = safeAreaTop + 10 // 滑入到安全区域下方 10 点
        
        UIView.animate(withDuration: animationDuration, delay: 0, options: .curveEaseOut, animations: {
            superview.layoutIfNeeded()
        }, completion: { _ in
            // 8. 动画：保持并滑出
            DispatchQueue.main.asyncAfter(deadline: .now() + displayDuration) {
                topConstraint.constant = -sparkView.frame.height - 10 // 再次移出屏幕
                
                UIView.animate(withDuration: animationDuration, delay: 0, options: .curveEaseIn, animations: {
                    superview.layoutIfNeeded()
                }, completion: { _ in
                    sparkView.removeFromSuperview()
                })
            }
        })
    }
}

