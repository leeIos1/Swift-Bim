//
//  Const.swift
//  Max-Bim
//
//  Created by apple on 2020/5/28.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation
import UIKit

/// 屏幕的宽度
public let Lee_screenWidth = UIScreen.main.bounds.width
/// 屏幕的高度
public let Lee_screenHeight = UIScreen.main.bounds.height
 
// iPhone X
public let Lee_isIphoneX = (Lee_screenWidth >= 375 && Lee_screenHeight >= 812)
// Status bar height.
public let Lee_statusBarH:CGFloat = Lee_isIphoneX ? 44 : 20
//public let lee_statusBarH:CGFloat = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
////状态栏高度为20的时候不是iphonex
//public let lee_isIphoneX = (lee_statusBarH==20) ? false : true
public let Lee_navH:CGFloat = 44.0
public let Lee_navTopH:CGFloat = Lee_statusBarH+Lee_navH
public let Lee_safeH:CGFloat = Lee_isIphoneX ? 34 : 0
public let Lee_tabBottomH:CGFloat = Lee_safeH + 49
public let Lee_totalH:CGFloat = Lee_tabBottomH+Lee_navTopH
public let Lee_scale = Lee_screenWidth/375.0

public let LeeMainColor = UIColor.lee_convenient(r: 21, g: 126, b: 251)
public let LeeRedColor = UIColor.lee_convenient(r: 252, g: 71, b: 76)
public let Lee34Color = UIColor.lee_initSingleColor(color: 34)
public let Lee153Color = UIColor.lee_initSingleColor(color: 153)
public let Lee255Color = UIColor.lee_initSingleColor(color: 255)
public let LeeSubTextColor = UIColor.lee_convenient(r: 21, g: 126, b: 251)
public let LeeBackgroundColor = UIColor.lee_convenient(r: 245, g: 246, b: 250)
public let LeeSplitColor = UIColor.lee_initSingleColor(color: 239)
 
public let Lee_baseUrl = "https://yinyinyuliao.com"

public let Lee_deviceId:String = (UIDevice.current.identifierForVendor?.uuidString)!
public let Lee_version:String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String

//log全局话
func JZLLog<T>(message: T,
                 logError: Bool = false,
                 file: String = #file,
                 method: String = #function,
                 line: Int = #line)
{
    if logError {
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    } else {
        #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
        #endif
    }
}

typealias Lee_Closure = (() -> Void)
typealias Lee_optionClosure = (() -> (Void)?)
