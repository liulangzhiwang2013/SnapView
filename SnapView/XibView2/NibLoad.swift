//
//  NibLoad.swift
//  SnapView
//
//  Created by pxx on 2018/5/23.
//  Copyright © 2018年 平晓行. All rights reserved.
//

import Foundation
import UIKit

/*
 xib自定义的view遵循这个协议，可以实现快速加载
 */
protocol Nibloadable {
    
}

extension Nibloadable where Self : UIView{
    /*
     static func loadNib(_ nibNmae :String = "") -> Self{
     let nib = nibNmae == "" ? "\(self)" : nibNmae
     return Bundle.main.loadNibNamed(nib, owner: nil, options: nil)?.first as! Self
     }
     */
    static func loadNib(_ nibNmae :String? = nil) -> Self{
        return Bundle.main.loadNibNamed(nibNmae ?? "\(self)", owner: nil, options: nil)?.first as! Self
    }
}
