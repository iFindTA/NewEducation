//
//  MENavigationBar.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/29.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit

class MENavigationBar: UINavigationBar {
    
    var offset:CGFloat {
        guard #available(iOS 11.0, *) else {
            return 0
        }
        return 30
    }
    //*
    override func layoutSubviews() {
        super.layoutSubviews()
        //status bar height
        let statusBarHeight = AppSize.HEIGHT_STATUSBAR()
        let navigationBarHeight = AppSize.HEIGHT_NAVIGATIONBAR
        
        let allHeight = statusBarHeight+navigationBarHeight
        self.frame = CGRect(x: 0, y: 0, width: AppSize.WIDTH_SCREEN, height: allHeight)
        for v in self.subviews {
            let clsString = NSStringFromClass(type(of: v))
            if clsString.contains("Background") {
                v.frame = self.bounds
            } else if clsString.contains("ContentView") {
                var frame = v.frame;
                frame.origin.x -= self.offset * 0.5;
                frame.origin.y = statusBarHeight;
                frame.size.height = allHeight - statusBarHeight;
                frame.size.width += self.offset;
                v.frame = frame;
            }
        }
        
    }
}
