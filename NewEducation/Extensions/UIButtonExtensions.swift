//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import UIKit
import Foundation

public extension UIButton {
    private struct pb_associatedKeys {
        static var acceptEventInterval = "pb_acceptEventInterval"
        static var acceptEventTime = "pb_acceptEventTime"
    }

    var pb_acceptEventInterval: TimeInterval {
        get {
            if let acceptEventInterval = objc_getAssociatedObject(self, &pb_associatedKeys.acceptEventInterval) as? TimeInterval {
                return acceptEventInterval
            }
            return 1.0
        }

        set {
            objc_setAssociatedObject(self, &pb_associatedKeys.acceptEventInterval, newValue as TimeInterval, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    var pb_acceptEventTime: TimeInterval {
        get {
            if let acceptEventTime = objc_getAssociatedObject(self, &pb_associatedKeys.acceptEventTime) as? TimeInterval {
                return acceptEventTime
            }
            return 1.0
        }

        set {
            objc_setAssociatedObject(self, &pb_associatedKeys.acceptEventTime, newValue as TimeInterval, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
//    override public class func initialize() {
//
//    }
}