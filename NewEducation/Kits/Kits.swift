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
    // MARK: UIBarButtonItems
    public static func barSpacer() -> UIBarButtonItem {
        let item = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        item.width = -AppSize.WIDTH_MARGIN
        return item
    }
    
}
