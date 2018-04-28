//
//  AppDelegate.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/27.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import UIKit
import GRDB
import AFImageHelper

var dbQueue: DatabaseQueue!

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var rootNaviProfile:BaseNavigationProfile?

    var rootTabBar: BaseTabBarProfile?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let bounds = UIScreen.main.bounds
        self.window = UIWindow(frame: bounds);
        self.window?.backgroundColor = UIColor.white
        let rooter = self.assembleRootProfile()
        rootNaviProfile = BaseNavigationProfile(rootViewController: rooter!)
        self.window!.rootViewController = rootNaviProfile
        self.window!.makeKeyAndVisible()

        print(NSHomeDirectory())
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // MARK: assemble root profiles
    func assembleRootProfile() -> BaseTabBarProfile! {
        var destProfile:BaseTabBarProfile
        let dark_level:CGFloat = 1.0
        var profiles = [UIViewController]()
        /*index tab*/
        var title = "首页"
        var icon = "tabbar_index"
        var image = UIImage(named: icon)
        let indexProfile = IndexRootProfile()
        indexProfile.tabBarItem.title = title
        indexProfile.tabBarItem.image = image
        image = image?.pb_darkColor(color: AppColor.THEME_COLOR, level: dark_level)
        indexProfile.tabBarItem.selectedImage = image
        profiles.append(indexProfile)

        /*聊天*/
        title = "聊天"
        icon = "tabbar_chat"
        image = UIImage(named: icon)
        let chatProfile = ChatRootProfile()
        chatProfile.tabBarItem.title = title
        chatProfile.tabBarItem.image = image
        image = image?.pb_darkColor(color: AppColor.THEME_COLOR, level: dark_level)
        chatProfile.tabBarItem.selectedImage = image
        profiles.append(chatProfile)

        /*宝宝成长*/
        title = "宝宝成长"
        icon = "tabbar_baby"
        image = UIImage(named: icon)
        let babyProfile = BabyRootProfile()
        babyProfile.tabBarItem.title = title
        babyProfile.tabBarItem.image = image
        image = image?.pb_darkColor(color: AppColor.THEME_COLOR, level: dark_level)
        babyProfile.tabBarItem.selectedImage = image
        profiles.append(babyProfile)

        /*个人中心*/
        title = "我的"
        icon = "tabbar_personal"
        image = UIImage(named: icon)
        let personalProfile = ChatRootProfile()
        personalProfile.tabBarItem.title = title
        personalProfile.tabBarItem.image = image
        image = image?.pb_darkColor(color: AppColor.THEME_COLOR, level: dark_level)
        personalProfile.tabBarItem.selectedImage = image
        profiles.append(personalProfile)

        destProfile = BaseTabBarProfile()
        destProfile.viewControllers = profiles
        return destProfile
    }

    // MARK: setup database
    private func setupDataBase(_ application: UIApplication) throws {
        let dbURL = try FileManager.default.url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        //let dbQueue = try DB.
    }
    
}

