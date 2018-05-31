//
//  DashangView.swift
//  SnapView
//
//  Created by pxx on 2018/5/22.
//  Copyright © 2018年 平晓行. All rights reserved.
//

import UIKit

class TestView2: UIView  , Nibloadable{
    
    
    @IBOutlet weak var view: UIView!
    
    //子控件初始化,也可以在这里纯代码添加其他控件
    required init?(coder aDecoder: NSCoder) {
        print(view==nil) //true
        super.init(coder: aDecoder)
    }
    
    //子控件初始化完成
    override func awakeFromNib() {
        print(view.frame)  //这里的frame不是最终frame
    }
    
    //这里获得控件的真实frame
    override func layoutSubviews() {
        super.layoutSubviews()
        print(view.frame)
        view.layer.masksToBounds = true
        view.layer.cornerRadius = view.frame.size.height/2
    }
    
}
