//
//  VMCodes.swift
//  NewEducation
//
//  Created by nanhu on 2018/5/2.
//  Copyright © 2018年 nanhu. All rights reserved.
//

import Foundation

struct respCode {
    public static let SUCCESS = "SUCCESS"
    public static let FAILURE = "FAIL"
}

enum cmdVersion:String {
    case V1 = "1"
    case V2 = "2"
    case V3 = "3"
}

struct cmdCode {
    /*用户登录相关*/
    public static let  SESSION_POST = "SESSION_POST"
}

struct reqCode {
    
}
