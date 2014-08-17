//
//  KeyboardViewController.swift
//  MyKeyboard
//
//  Created by default on 2014/08/12.
//  Copyright (c) 2014年 default. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet weak var nextKeyboardButton: UIButton!

    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btntimes: UIButton!
    @IBOutlet weak var btnDiv: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btnEnter: UIButton!
    @IBOutlet weak var btnDel: UIButton!
    
    @IBOutlet weak var b : UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Perform custom UI setup here
//        self.nextKeyboardButton = UIButton.buttonWithType(.System) as UIButton
//    
//        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
//        self.nextKeyboardButton.sizeToFit()
//        self.nextKeyboardButton.setTranslatesAutoresizingMaskIntoConstraints(false)
//        self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
//        self.view.addSubview(self.nextKeyboardButton)
//        
//        b = UIButton.buttonWithType(UIButtonType.ContactAdd) as UIButton
//        b.setTitle(NSLocalizedString("keyInput", comment: "testBtn"), forState: .Normal)
//        b.sizeToFit()
//        b.setTranslatesAutoresizingMaskIntoConstraints(false)
//        b.addTarget(self, action: "keyInput:", forControlEvents: .TouchUpInside)
//        self.view.addSubview(b)
//        
//        
//        var bButtonLeftSideConstraint = NSLayoutConstraint(item: b, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
//        var bButtonBottomConstraint = NSLayoutConstraint(item: b, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Top, multiplier: 1.0, constant: 0.0)
//        self.view.addConstraints([bButtonLeftSideConstraint, bButtonBottomConstraint])
//        
//    
//        var nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
//        var nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
//        self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])
        
        var v = UINib(nibName:"CustomKeyboardXib", bundle:nil).instantiateWithOwner(self,options:nil)[0] as UIView
        self.inputView.addSubview(v)
    }
    @IBAction func tapNumButton(sender: AnyObject) {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText((sender as UIButton).titleLabel.text)
    }
    
    @IBAction func btnDelete(sender: AnyObject) {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    @IBAction func btnCompleted(sender: AnyObject) {
        self.dismissKeyboard()
    }
    

    override func textWillChange(textInput: UITextInput) {
        println(textInput.description)
    }

    override func textDidChange(textInput: UITextInput) {
        println(textInput.description)
    
        var textColor: UIColor
        var proxy = self.textDocumentProxy as UITextDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    }

}
