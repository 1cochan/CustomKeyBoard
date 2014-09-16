//
//  KeyboardViewController.swift
//  MyKeyboard
//
//  Created by default on 2014/08/12.
//  Copyright (c) 2014年 default. All rights reserved.
//

import UIKit
//extension UIView{
//    class func getWindow()->(UIView){
//        return UIApplication.sharedApplication().keyWindow
//    }
//}

class KeyboardViewController: UIInputViewController {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override required init() {
        super.init()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @IBOutlet weak var nextKeyboardButton: UIButton!
    
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btntimes: UIButton!
    @IBOutlet weak var btnDiv: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btnEnter: UIButton!
    @IBOutlet weak var btnDel: UIButton!
    
    @IBOutlet weak var b : UIButton!
    
    var _initialFrame : CGRect = CGRectZero;
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var v = UINib(nibName:"CustomKeyboardXib_alphabet", bundle:nil).instantiateWithOwner(self,options:nil)[0] as UIView
        self.inputView.addSubview(v)
        
        //                self.inputView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.nextKeyboardButton!.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
    }
    override func viewWillAppear(animated: Bool) {
        println("viewWillAppear _initialFrame" + NSStringFromCGRect(self.view.frame))
    }
    override func viewDidAppear(animated: Bool) {
        _initialFrame = self.view.frame
        println("viewDidAppear _initialFrame" + NSStringFromCGRect(_initialFrame))
//        changeHeight()
    }
    
    func changeHeight(){
        let expandedHeight:CGFloat = _initialFrame.size.height + 100
        let heightConstraint = NSLayoutConstraint(item:self.view,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 0.0,
            constant: expandedHeight)
        self.view.addConstraint(heightConstraint)
        
    }
    @IBAction func tapNumButton(sender: AnyObject) {
        
        self.inputView.inputAccessoryView
        var proxy = textDocumentProxy as UITextDocumentProxy
        
        
        //        self.view.inputAccessoryView
        //        self.inputAccessoryView = UIView(frame: CGRectMake(0, 0, 100, 100))
        var txt = sender.titleLabel??.text!
        
        proxy.insertText(txt!)
    }
    
    
    @IBAction func btnDelete(sender: AnyObject) {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    @IBAction func btnCompleted(sender: AnyObject) {
        self.dismissKeyboard()
    }
    
    override func textWillChange(textInput: UITextInput?) {
        //        println("textWillChange" + textInput!.description!)
    }
    
    override func textDidChange(textInput: UITextInput?) {
        //        println("textDidChange" + textInput!.description!)
        
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
