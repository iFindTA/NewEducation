//
//  BaseProfile.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/27.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit

class BaseProfile: UIViewController {
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
}
