//
// Created by nanhu on 2018/4/27.
// Copyright (c) 2018 nanhu. All rights reserved.
//

import SnapKit
import Foundation

class IndexRootProfile: BaseProfile {

    var height = 10

    var actionBlock:(()->())?
    
    var btn = UIButton(type: .custom)
    
    var videoPlayBtn = UIButton(type: .custom)
    
    var indexNavigationBar: MEIndexNavigationBar?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
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
        */
        
        //先写死
        let titles = ["精选", "小班", "中班", "大班"]
        indexNavigationBar = MEIndexNavigationBar(frame: .zero, titles: titles)
        view.addSubview(indexNavigationBar!)
        let barHeight = AppSize.HEIGHT_STATUSBAR() + AppSize.HEIGHT_NAVIGATIONBAR
        indexNavigationBar?.snp.makeConstraints({ (make) in
            make.top.left.right.equalTo(view)
            make.height.equalTo(barHeight)
        })
        
        configureSubviews()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    func configureSubviews() -> Void {
        btn.setTitle("route", for: .normal)
        btn.addTarget(self, action: #selector(routeTouchEvent(_:)), for: .touchUpInside)
        btn.backgroundColor = UIColor.blue
        self.view.addSubview(btn)
        btn.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(100)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.height.equalTo(30)
        }
        
        videoPlayBtn.setTitle("video play", for: .normal)
        videoPlayBtn.addTarget(self, action: #selector(videoPlayeTouchEvent), for: .touchUpInside)
        videoPlayBtn.backgroundColor = UIColor.red
        self.view.addSubview(videoPlayBtn)
        videoPlayBtn.snp.makeConstraints { (make) in
            make.top.equalTo(btn.snp.bottom).offset(30)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.height.equalTo(30)
        }
    }
    
    @objc func routeTouchEvent(_ button: UIButton)  {
        print("touvh event")
        
        //Router.open(RoutePaths.subcategory("视频播放"))
        
        let params = ["title":"sub dev---test"]
        let err = Router.open(RoutePaths.sub(), space: nil, params: params)
        RouterKit.handleError(err: err)
    }
    
    @objc func videoPlayeTouchEvent() {
        print("touch video play")
        let err = Router.open(RoutePaths.videoPlay(), space: nil, params: nil)
        RouterKit.handleError(err: err)
    
    }
}
