//
//  TgextileLuster.swift
//  VoioDeaniy
//
//  Created by  on 2026/4/23.
//


import Foundation
import UIKit

//app B包全局配置
public class TgextileLuster: NSObject {
    
    // MARK: - 1. 单例
    public static let shared = TgextileLuster()
    
    // 私有初始化方法，强制使用单例
    internal override init() {
        super.init()
    }
    
    // MARK: - 2. 环境控制与 Window
    
    /**
     * @brief 是否是测试环境。设置为 true 时，只读属性 (baseURL, aesKey, appId, aesIV) 将使用 Debug 配置。
     */
    public var APPPREFIX_debugMode: Bool = true
    
   
    
    // MARK: - 3. 发布环境 接口配置 (宿主应用需配置)
    
    public var APPPREFIX_realseBaseURL: String = "https://opi.e6b15du6.link"//base url ****
    public var APPPREFIX_realseAPPID: String = "45448564"//APPID ****
    public var APPPREFIX_realseAesKey: String = "ub31ewehkye34qgt"//AES加密key ****
    public var APPPREFIX_realseAesIV: String = "ndt2jda0flylj2bx"//AES加密IV ****
    
    // MARK: - 4. A/B 切换
    
    /**
     * @brief 启动页网络请求时间控制（Unix Time Interval）。早于此时间，LaunchController 将直接进入 A 面。
     */
    public var APPPREFIX_launchRequestTimeInterval: TimeInterval = 0 //****
    
   
    
    // MARK: - 5. UI 配置 (宿主应用需配置)
    
//    public var APPPREFIX_LaunchBackgroundImage: String = "realowehiert"//启动页面背景图 ****
//    public var APPPREFIX_mainBackgroundImage: String = "sparkAnimatorhoniy"//登录和web页面背景图 ****
    public var APPPREFIX_loginButtonBackImage: String = "styleEmitterHoniy" //登录按钮背景 ****
    public var APPPREFIX_smallImage: String = "outfitRendererHoniy" //登录页如果有小图 ****
    


    
    public var APPPREFIX_setting_App_A_Root_Handler: ((UIWindow?) -> Void)?
    
    /**
     * @brief 内部调用方法，触发宿主应用配置的 A 包切换逻辑。
     * @discussion SDK 内部调用此方法来执行 A 包切换。
     */
    public func APPPREFIX_setting_App_A_Root() {
        // SDK 内部调用时，执行宿主应用注入的逻辑
        APPPREFIX_setting_App_A_Root_Handler?(APPPREFIX_AppLaunchController.APPPREFIX_mainWindow)
    }
    
    // MARK: - 11. 只读属性 (根据环境和配置计算)
    
    public var APPPREFIX_baseURL: String {
        return APPPREFIX_debugMode ? "https://opi.cphub.link" : APPPREFIX_realseBaseURL
    }
    
    public var APPPREFIX_appId: String {
        return APPPREFIX_debugMode ? "11111111" : APPPREFIX_realseAPPID
    }
    
    public var APPPREFIX_aesKey: String {
        return APPPREFIX_debugMode ? "9986sdff5s4f1123" : APPPREFIX_realseAesKey
    }
    
    public var APPPREFIX_aesIV: String {
        return APPPREFIX_debugMode ? "9986sdff5s4y456a" : APPPREFIX_realseAesIV
    }
}
