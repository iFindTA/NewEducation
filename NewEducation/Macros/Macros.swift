//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import UIKit
import Foundation
#if DEBUG
public static let APP_BASE_HOST = "http://192.168.1.199:8080"
#else

#endif

func RGBA(r, g, b, a) -> UIColor {
    return UIColor(red: r, green: g, blue: b, alpha: a)
}

func ColorHEX(f) -> UIColor {
    return
}