//
//  BaseProfile.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/27.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit
import AFImageHelper
import CoreFoundation

class BaseProfile: UIViewController {
    
    /// 懒加载
    lazy var navigationBar: MENavigationBar = {
        let n = MENavigationBar()
        let tintColor = RGBA(r: 255, g: 255, b: 255, a: 1);
        let barTintColor = AppColor.COLOR_THEME;//影响背景
        let font = AppFont.font(AppFont.PF_BOLD, size: AppFont.SIZE_LARGE_TITLE)
        n.barStyle = .black
        let bgImg = UIImage(color: barTintColor);
        n.setBackgroundImage(bgImg, for: .default)
        n.shadowImage = UIImage()
        n.barTintColor = barTintColor
        n.tintColor = tintColor
        n.isTranslucent = false
        n.titleTextAttributes = {[
            NSAttributedStringKey.font: font,
            NSAttributedStringKey.strokeColor:tintColor
            ]}()
        return n
    }()
    
    deinit {
        print("profile 析构: class: \(type(of: self))")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
         self.view.backgroundColor = UIColor.white
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.view.backgroundColor = UIColor.white
    }
    
    @objc public func defaultGobackStack() {
        guard self.isBeingPresented else {
            self.navigationController?.popViewController(animated: true)
            return
        }
        self.dismiss(animated: true, completion: nil)
    }
}
