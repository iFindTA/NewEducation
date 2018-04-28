//
//  Router.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/28.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit
import Foundation

/// 参数别名
public typealias RouteParameter = [String: Any]

/// 路由路径协议
public protocol RoutePathable {
    var any: AnyClass { get }
    var params: RouteParameter? { get }
}

/// route 协议
public protocol Routable {
    
    /// 类初始化方法
    ///
    /// - Parameter params: 参数map
    /// - Returns: 路由实例
    static func __initWithParams(params: RouteParameter?) -> UIViewController
}

public class RouterKit {
    
    public class func topViewController(rootProfile: UIViewController) -> UIViewController {
        if rootProfile.isKind(of: UITabBarController.self) {
            let tabBarProfile = rootProfile as! UITabBarController
            return topViewController(rootProfile:tabBarProfile.selectedViewController!)
        }
        if rootProfile.isKind(of: UINavigationController.self) {
            let navigationProfile = rootProfile as! UINavigationController
            return topViewController(rootProfile:navigationProfile.visibleViewController!)
        }
        if rootProfile.presentedViewController != nil {
            return topViewController(rootProfile:rootProfile.presentedViewController!)
        }
        return rootProfile
    }
    
    public class func topestProfile() -> UIViewController? {
        guard let rootProfile = UIApplication.shared.keyWindow?.rootViewController else {
            return nil
        }
        //找到目前正在显示的栈顶profile
        return topViewController(rootProfile: rootProfile)
    }
}

public class Router {
    
    public class func open(_ path: RoutePathable, present: Bool = false, animate: Bool = true, completion: (() -> Void)? = nil) {
        guard let cls = path.any as? Routable.Type else {
            print("路由出错！")
            return
        }
        
        //初始化控制器
        let profile = cls.__initWithParams(params: path.params)
        profile.hidesBottomBarWhenPushed = true
        //找到栈顶
        let topProfile = RouterKit.topestProfile()
        if topProfile?.navigationController != nil && !present {
            topProfile?.navigationController?.pushViewController(profile, animated: animate)
        } else {
            topProfile?.present(profile, animated: animate, completion: completion)
        }
        
    }
}
