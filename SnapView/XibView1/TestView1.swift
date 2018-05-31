//
//  TestView1.swift
//  SnapView
//
//  Created by pxx on 2018/5/23.
//  Copyright © 2018年 平晓行. All rights reserved.
//

import UIKit

class TestView1: UIView {

    static func loadView()->TestView1{
        return Bundle.main.loadNibNamed("TestView1", owner: nil, options: nil)?.first as! TestView1
    }
    
    

}
