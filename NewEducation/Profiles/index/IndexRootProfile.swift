//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import SnapKit
import Foundation
import WHC_ModelSqliteKit

class IndexRootProfile: BaseProfile {

    var height = 10

    var actionBlock:(()->())?

    override func viewDidLoad() {
        super.viewDidLoad()

        let userBuilder = Pbuser.Builder()
        userBuilder.name = "nanhujiaju"
        let user = try? userBuilder.build()
        let userData = try! user?.toJSON()
        print(user?.data())

        var trans_user = try? Pbuser.fromJSON(data: userData!)
        print(trans_user?.name)

        //as weak var wkSelf = self
        actionBlock = {[weak self] in
            //self.height = 20
            self?.height = 20
        }
        actionBlock?()

        print(self.height)
        
        var btn = UIButton(type: <#T##UIButtonType#>)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
}
