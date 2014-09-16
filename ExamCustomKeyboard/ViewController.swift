//
//  ViewController.swift
//  ExamCustomKeyboard
//
//  Created by default on 2014/08/12.
//  Copyright (c) 2014年 default. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

//        addInputAccessoryView()

    }
    
    func addInputAccessoryView(){
    var view = UIView(frame: CGRectMake(0, 0, 100, 100))
    view.backgroundColor = UIColor.blackColor()
    textField.inputAccessoryView = view

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

