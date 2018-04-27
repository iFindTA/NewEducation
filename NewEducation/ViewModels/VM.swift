//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import Alamofire
import Foundation

class VM: NSObject {
    /*命令 code*/
    public var cmdCode = ""
    /*命令版本*/
    public var cmdVersion:cmdVersion = .V1
    /*请求 code*/
    public var reqCode = ""
    /*请求 消息*/
    public var msg = ""
    /*session token for user*/
    public var sessionToken = ""
    
    public func post() {
        
    }

    public func post(data: NSData?) {

        Alamofire.request(Macros.APP_BASE_HOST, method:.post, parameters: nil, encoding: URLEncoding.default, headers: nil)
                .responseData(queue: .main) { response in
            print(response)
         }
    }
}