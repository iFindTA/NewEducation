//
//  NSStringExtentions.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/30.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit
import Foundation
import CoreGraphics

extension String {
    public func available() -> String {
        guard self.count > 0 else {
            return ""
        }
        return self
    }
    
    public func size(_ width: CGFloat, font: UIFont) -> CGSize {
        guard self.count > 0 else {
            return .zero
        }
        let bounds = NSString(string: self).boundingRect(with: CGSize(width: width, height: AppSize.HEIGHT_SCREEN), options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        return bounds.size
    }
}


extension NSString {
    public func available() -> NSString {
        print(self.length)
        guard self.length > 0 else {
            return "" as NSString
        }
        return self
    }
    
    public func size(_ width: CGFloat, font: UIFont) -> CGSize {
        guard self.length > 0 else {
            return .zero
        }
        let bounds = self.boundingRect(with: CGSize(width: width, height: AppSize.HEIGHT_SCREEN), options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        return bounds.size
    }
}
