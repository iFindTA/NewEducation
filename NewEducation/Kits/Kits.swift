//
//  Kits.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/29.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit
import Foundation


struct Kits {
    
    // MARK: avaiable{String}
    public static func availableString(_ s: String?) -> String {
        guard s != nil else {
            return ""
        }
        return s!
    }
    
    // MARK: UIBarButtonItems
    public static func barSpacer() -> UIBarButtonItem {
        let item = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        item.width = -AppSize.WIDTH_MARGIN
        return item
    }
    
//    public static func defaultBackBarItem(_ target: Any?) -> UIBarButtonItem {
//        let backAction = #selector(defaultGobackStack)
//        return Kits.defaultBackBarItem(target, action: backAction)
//    }
    
    public static func defaultBackBarItem(_ target: Any?, action: Selector?) -> UIBarButtonItem {
        return Kits.defaultBackBarItem(target, action: action, color: UIColor.white)
    }
    
    public static func defaultBackBarItem(_ target: Any?, action: Selector?, color: UIColor?) -> UIBarButtonItem {
        return Kits.barWithUnicode("\u{0000e6e2}", title:nil, color: color, target: target, action: action)
    }
    
    private static func barWithUnicode(_ code: String, title: String?, color: UIColor?, target: Any?, action:Selector?) -> UIBarButtonItem {
        let fontName = "iconfont"
        let font = UIFont(name: fontName, size: AppFont.SIZE_TITLE * 1.5)
        let barTitle = code + self.availableString(title)
        let barSize = barTitle.size(AppSize.WIDTH_SCREEN, font: font!)
        let fontColor = ((color != nil) ?color!:UIColor.white)
        let btn = BaseButton(type: .custom)
        btn.titleLabel?.font = font
        btn.isExclusiveTouch = true
        btn.frame = CGRect(x: 0, y: 0, width: barSize.width+AppSize.SIZE_OFFSET, height: barSize.height+AppSize.SIZE_OFFSET)
        btn.setTitle(barTitle as String, for: .normal)
        btn.setTitleColor(fontColor, for: .normal)
        btn.addTarget(target, action: action!, for: .touchUpInside)
        let bar = UIBarButtonItem(customView: btn)
        bar.tintColor = fontColor
        return bar
    }
}
