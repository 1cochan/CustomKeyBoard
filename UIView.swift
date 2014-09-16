//
//  UIExtension.swift
//  ExamCustomKeyboard
//
//  Created by B05543 on 2014/09/11.
//  Copyright (c) 2014年 default. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    //カスタムキーボードのターゲットに加えるとコンパイルできない
    class func getWindow()->(UIView){
        return UIApplication.sharedApplication().keyWindow
    }
}

