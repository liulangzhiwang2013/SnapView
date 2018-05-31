//
//  ViewController.swift
//  SnapView
//
//  Created by pxx on 2018/5/22.
//  Copyright © 2018年 平晓行. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testView2:TestView2!
    var snapView:SnapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*
         1.1 使用xib自定义view，使用自定义Load方法加载
         */
        let testView = TestView1.loadView()
        self.view.addSubview(testView)
        //设置frame
        testView.frame = CGRect.init(x: 20, y: 20, width: 100, height: 100)
        //也可使用纯代码加约束
//        testView.snp.makeConstraints { (make) in
//            make.left.top.equalTo(20)
//            make.height.width.equalTo(100)
//        }
        
        
        
        /*
         1.2 使用xib自定义View，使用协议方法加载(推荐使用)
         */
        testView2 = TestView2.loadNib()
        self.view.addSubview(testView2)
        //设置frame
        testView2.frame = CGRect.init(x: 130, y: 20, width: 100, height: 100)
        //也可使用纯代码加约束
//        testView2.snp.makeConstraints({ (make) in
//            make.top.equalTo(20)
//            make.left.equalTo(130)
//            make.height.width.equalTo(100)
//        })
        
        
        
        /*
         2 snap自定义view,使用init方法加载
         */
        snapView = SnapView.init(frame: CGRect.init(x: 240, y: 20, width: 100, height: 100))
        snapView.backgroundColor = UIColor.yellow
        self.view.addSubview(snapView)
        
    }

    //可以在这里设置最终frame
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(testView2.view.frame)
        print(snapView.view.frame)
    }


}

