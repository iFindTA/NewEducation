//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import UIKit
import CoreGraphics

extension UIImage {
    func pb_darkColor(color :UIColor, level :CGFloat) -> UIImage {
        let imageRect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)

        UIGraphicsBeginImageContextWithOptions(imageRect.size, false, self.scale)
        color.setFill()
        UIRectFill(imageRect)
        self.draw(in: imageRect, blendMode: .destinationAtop, alpha: level)

        let destimg = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return destimg!
    }
}