//
//  RoutePaths.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/29.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import Foundation

// MARK: 路由路径集合 其他的路由路径均由扩展实现 不允许修改本结构体！！！
public struct RoutePaths {
    
    //默认：404页面
    static func notFound() -> String {
        return "RouteNotFound"
    }
}

// MARK: - 路由路径：首页子分类路由
extension RoutePaths {
    static func sub() -> String {
        return "SubCategoryProfile"
    }
    
    
}
