//
//  MyInputViewController.swift
//  ExamCustomKeyboard
//
//  Created by default on 2014/08/12.
//  Copyright (c) 2014年 default. All rights reserved.
//

import Foundation
import UIKit

public class MyInputViewController : UIInputViewController{
 
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        var v = UINib(nibName:"CustomKeyboardXib", bundle:nil).instantiateWithOwner(self,options:nil)[0] as UIView
        self.inputView.addSubview(v)
    }
    
    func insert(num : Int) {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(String(num))
    }
    
    func delChar() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
}