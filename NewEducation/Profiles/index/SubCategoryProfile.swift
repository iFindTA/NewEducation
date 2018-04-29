//
//  SubCategoryProfile.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/28.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit
import Foundation

class SubCategoryProfile: BaseProfile {
    var params: RouteParameter? = RouteParameter()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(_ parameters: RouteParameter?) {
        self.params = parameters
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.params?["title"] as? String
    }
}

// MARK: - 路由扩展
extension SubCategoryProfile: Routable {
    static func __initWithParams(params: RouteParameter?) -> UIViewController {
        return SubCategoryProfile(params)
    }
}
