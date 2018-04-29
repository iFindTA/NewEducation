//
//  BaseScene.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/27.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit

class BaseButton: UIButton {
}

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
