//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import UIKit
import Foundation

struct Macros {
    public static let APP_BASE_HOST = "http://192.168.1.199:8080/api/app"
}

//struct Color {
//    var R:CGFloat = 1.0
//    var G:CGFloat = 1.0
//    var B:CGFloat = 1.0
//    var A:CGFloat = 1.0
//}

struct AppColor {
    public static let THEME_COLOR = RGBA(r: 96, g: 158, b: 225, a: 1)
}

func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}