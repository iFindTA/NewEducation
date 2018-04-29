//
//  IndexNavigationBar.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/29.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit

class MEIndexNavigationBar: BaseScene {
    
    lazy var barItems: [BaseButton]? = {
        var m = [BaseButton]()
        return m
    }()
    
    public var barTitles:[String]? {
        didSet {
            guard (barTitles?.count)! > 0 else {
                return
            }
            configureTitleButtons()
        }
    }
    
    let normalFont = AppFont.font(AppFont.PF_MEDIUM, size: 16.0)
    let selectFont = AppFont.font(AppFont.PF_BOLD, size: 18.0)
    let selectColor = RGBA(r: 255, g: 255, b: 255, a: 1)
    let normalColor = UIColor(white: 1.0, alpha: 0.85)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(frame: CGRect, titles: [String]?) {
        
        super.init(frame: frame)
        
        self.backgroundColor = AppColor.COLOR_THEME
        
        defer {
            self.barTitles = titles
        }
    }
    
    private func configureTitleButtons() {
        var i = 0
        for t in barTitles! as NSArray {
            let title = t as! String
            let b = BaseButton(type: .custom)
            b.tag = i
            b.titleLabel?.font = normalFont
            b.setTitleColor(normalColor, for: .normal)
            b.setTitle(title, for: .normal)
            barItems?.append(b)
            self.addSubview(b)
            i += 1
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let itemWidth = AppSize.HEIGHT_SUBBAR
        let itemHeight = AppSize.HEIGHT_ICON
        //let counts = self.barItems?.count
        for (i, b)  in (self.barItems?.enumerated())! {
            b.snp.makeConstraints { (make) in
                make.left.equalTo(self).offset(AppSize.WIDTH_MARGIN + (itemWidth+AppSize.WIDTH_DIS)*CGFloat(i))
                make.bottom.equalTo(self).offset(-AppSize.WIDTH_MARGIN)
                make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
            }
        }
    }
}
