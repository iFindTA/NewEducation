//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import Foundation
import WHC_ModelSqliteKit

class IndexRootProfile: BaseProfile {

    var height = 10

    var actionBlock:(()->())?

    override func viewDidLoad() {
        super.viewDidLoad()

        var user = PBUser()
        WHC_ModelSqlite.insert(user)


        var personal = Personal()
        personal.name = "kkkkkkkkk"
        personal.dog = "dog"
        WHC_ModelSqlite.insert(personal)

        //as weak var wkSelf = self
        actionBlock = {[weak self] in
            //self.height = 20
            self?.height = 20
        }
        actionBlock?()

        print(self.height)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
}
