//
//  BaseScene.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/27.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit

// MARK: UIButton类
class BaseButton: UIButton {
    
}

extension BaseButton {
    class func __titleButton(_ title: String, selectTitle: String?, tag: Int = 0, action: Selector, target: Any?) -> BaseButton {
        let b = BaseButton(frame: .zero)
        b.titleLabel?.font = AppFont.font(AppFont.PF_BOLD, size: AppFont.SIZE_LARGE_TITLE)
        b.setTitle(title, for: .normal)
        
        return b
    }
}

// MARK: UILbel类
class BaseLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.white
    }
}

// MARK: UIView
class BaseScene: UIView {
    
    deinit {
        print("scene 析构: class: \(type(of: self))")
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
