//
//  SBHTTPService.swift
//  NewEducation
//
//  Created by nanhu on 2018/4/27.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import Alamofire
import Foundation

enum SBHTTPState:Int {
    case None
    case WiFi
    case WLAN
    case Unavailable
    //也可以一个case 枚举所有
    //case None, WiFi, WLAN, Unavailable
}

class SBHTTPService: Alamofire.DataRequest {
    
    //singletone method
    static let shared = SBHTTPService()
    private override init() {
        
    }
    
    func post()  {
        print("你好")
    }
}
