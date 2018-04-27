//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import UIKit
import Foundation

struct Macros {
    public static let APP_BASE_HOST = "http://192.168.1.199:8080/api/app"
}

func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r, green: g, blue: b, alpha: a)
}