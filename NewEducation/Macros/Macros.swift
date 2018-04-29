//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import UIKit
import Foundation

public func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

struct Macros {
    public static let APP_BASE_HOST = "http://192.168.1.199:8080/api/app"
}

// MARK: app颜色
struct AppColor {
    public static let COLOR_THEME = RGBA(r: 96, g: 158, b: 225, a: 1)
    public static let COLOR_TITLE = RGBA(r: 51, g: 51, b: 51, a: 1)
}
// MARK: app字体
struct AppFont {
    //字体
    public static let PF_SC = "PingFangSC-Regular"
    public static let PF_BOLD = "PingFangSC-SemiBold"
    public static let PF_MEDIUM = "PingFangSC-Medium"
    //大小
    public static let SIZE_TITLE: CGFloat = 15.0
    public static let SIZE_LARGE_TITLE: CGFloat = 18.0
    public static let SIZE_SUB_TITLE: CGFloat = 13.0
    //字体
    public static func font(_ name: String, size: CGFloat) -> UIFont {
        return UIFont(name: name, size: size)!
    }
}

// MARK: app 常量
struct AppSize {
    //屏幕
    public static let WIDTH_SCREEN: CGFloat = UIScreen.main.bounds.size.width
    public static let HEIGHT_SCREEN: CGFloat = UIScreen.main.bounds.size.height
    
    //宽度
    public static let WIDTH_DIS: CGFloat = 5
    public static let WIDTH_MARGIN: CGFloat = 10
    public static let WIDTH_BOUNDARY: CGFloat = 20
    
    //高度
    public static let HEIGHT_TABBAR: CGFloat = 50
    public static let HEIGHT_SUBBAR: CGFloat = 40
    public static let HEIGHT_ICON: CGFloat = 30
    public static let HEIGHT_NAVIGATIONBAR: CGFloat = 44
    public static func HEIGHT_STATUSBAR() -> CGFloat {
        guard UIDevice.current.isX() else {
            return 20
        }
        return 30
    }
}

