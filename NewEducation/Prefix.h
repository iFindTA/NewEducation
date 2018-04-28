//
//  Prefix.h
//  NewEducation
//
//  Created by nanhu on 2018/4/27.
//  Copyright © 2018年 nanhu. All rights reserved.
//

#ifndef Prefix_h
#define Prefix_h

import SnapKit

#if DEBUG
public func printm(items: Any..., filename: String = #file, function: String = #function, line: Int = #line) {
    print("[\((filename as NSString).lastPathComponent) \(line) \(function)]\n",items)
}

#else
public func printm(items: Any..., filename: String = #file, function: String = #function, line: Int = #line) { }

#endif

#endif /* Prefix_h */
