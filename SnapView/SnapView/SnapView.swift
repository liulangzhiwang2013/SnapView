//
//  SnapView.swift
//  SnapView
//
//  Created by pxx on 2018/5/22.
//  Copyright © 2018年 平晓行. All rights reserved.
//

import UIKit
import SnapKit

class SnapView: UIView {

    var view:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        
    }
    
    func setUI() {
        view = UIView.init()
        view.backgroundColor = UIColor.red
        self.addSubview(view)
        view.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.center.equalToSuperview()
        }
        
        print(view.frame)  //(0 , 0 , 0 , 0)
        self.setNeedsLayout() //标记需要更新的view
        self.layoutIfNeeded() //更新被标记的view的frame，会执行layoutSubviews，
        print(view.frame) //真实frame
    }
    
    //获取到真实frame
    override func layoutSubviews() {
        super.layoutSubviews()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = view.frame.size.height/2
    }
    
}
