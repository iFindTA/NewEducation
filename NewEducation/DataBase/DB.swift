//
// Created by nanhu on 2018/4/28.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import GRDB

struct DB {

    static func openDataBase(atPath path: String) throws -> DatabaseQueue {
        // Connect to the database
        dbQueue = try DatabaseQueue(path: path)

        
        return dbQueue
    }
}

class Personal :NSObject {
    var name = ""

    var dog = ""
}
