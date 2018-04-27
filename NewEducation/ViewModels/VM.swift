//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import Foundation


class VM: NSObject {
    /*命令 code*/
    public var cmdCode = ""
    /*命令版本*/
    public var cmdVersion = "1"
    /*请求 code*/
    public var reqCode = ""
    /*请求 消息*/
    public var msg = ""
    /*session token for user*/
    public var sessionToken = ""

}