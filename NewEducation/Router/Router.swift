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
    static var any: AnyClass { get }
}

/// 路由 初始化 协议
public protocol Routable {
    
    /// 类初始化方法
    ///
    /// - Parameter params: 参数map
    /// - Returns: 路由实例
    static func __initWithParams(params: RouteParameter?) -> UIViewController
}

/// 路由包kits
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
    
    public class func rootableNavigationProfile() -> UINavigationController? {
        guard let rootProfile = UIApplication.shared.keyWindow?.rootViewController else {
            return nil
        }
        //找到目前正在显示的栈顶profile
        guard rootProfile.isKind(of: UINavigationController.self) else {
            return nil
        }
        let navigationProfile = rootProfile as! UINavigationController
        return navigationProfile
    }
    
    /// 处理错误
    public class func handleError(err: NSError?) {
        guard let error = err else {
            return
        }
        print(error.localizedDescription)
        //可以转到404页面
        _ = Router.open(RoutePaths.notFound(), space: nil, params: nil)
    }
}

/// 路由实现
public class Router {
    /*路由枚举实现 比较繁琐
    public class func open(_ path: RoutePathable, present: Bool = false, animate: Bool = true, completion: (() -> Void)? = nil) {
        guard let cls = path.any as? Routable.Type else {
            print("路由出错！")
            return
        }
        
        //初始化控制器
        let profile = cls.__initWithParams(params: path.parammeters)
        profile.hidesBottomBarWhenPushed = true
        //找到栈顶
        let topProfile = RouterKit.topestProfile()
        if topProfile?.navigationController != nil && !present {
            topProfile?.navigationController?.pushViewController(profile, animated: animate)
        } else {
            topProfile?.present(profile, animated: animate, completion: completion)
        }
    }*/
    
    public class func open(_ routeClass: String, space: String?, params:RouteParameter?, push: Bool = true, animate: Bool = true, completion: (() -> Void)? = nil) -> NSError? {
        //assemble class for route
        var routePath = ""
        if let spaceName = space {
            routePath = spaceName + "." + routeClass
        } else {
            let spaceName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String
            routePath = spaceName! + "." + routeClass
        }
        
        guard let cls = NSClassFromString(routePath) else {
            let error = NSError(domain: "route path error!", code: -1, userInfo: nil)
            return error
        }
        
        guard let destCls = cls as? Routable.Type else {
            let error = NSError(domain: "rclass does not conform Routable protocol!", code: -1, userInfo: nil)
            return error
        }
        
        //初始化控制器
        let profile = destCls.__initWithParams(params: params)
        profile.hidesBottomBarWhenPushed = true
        let navigationProfile = RouterKit.rootableNavigationProfile()
        guard navigationProfile != nil && push else {
            //找到栈底导航控制器
            let topProfile = RouterKit.topestProfile()
            if topProfile?.navigationController != nil {
                topProfile?.navigationController?.pushViewController(profile, animated: animate)
            } else {
                topProfile?.present(profile, animated: true, completion: completion)
            }
            return nil
        }
        navigationProfile?.pushViewController(profile, animated: animate)
        return nil
    }
}

