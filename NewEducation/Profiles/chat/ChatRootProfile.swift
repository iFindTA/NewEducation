//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import UIKit

class ChatRootProfile: BaseProfile {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.navigationBar)
        let item = UINavigationItem(title: "聊天")
        self.navigationBar.pushItem(item, animated: true)
    }

}
