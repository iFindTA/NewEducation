//
//  RouteNotFound.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/29.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit
import Foundation

class RouteNotFound: BaseProfile {
    
    var label: BaseLabel?
    
    init(_ parameters: RouteParameter?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.navigationBar)
        let spacer = Kits.barSpacer()
        let backItem = Kits.defaultBackBarItem(self, action: #selector(defaultGobackStack))
        let item = UINavigationItem(title: "抱歉")
        item.leftBarButtonItems = [spacer, backItem]
        self.navigationBar.pushItem(item, animated: true)
        
        self.configureSubviews()
    }
    
    @objc func configureSubviews() {
        label = BaseLabel(frame: CGRect.zero)
        label?.font = AppFont.font(AppFont.PF_MEDIUM, size: AppFont.SIZE_LARGE_TITLE)
        label?.textAlignment = .center
        label?.textColor = AppColor.COLOR_TITLE
        label?.text = "该服务目前不可用！"
        self.view.addSubview(label!)
        label?.snp.makeConstraints({ (make) in
            make.top.equalTo(navigationBar.snp.bottom)
            make.left.bottom.right.equalTo(view)
        })
    }
}

// MARK: - 路由扩展
extension RouteNotFound: Routable {
    static func __initWithParams(params: RouteParameter?) -> UIViewController {
        return RouteNotFound(params)
    }
}
