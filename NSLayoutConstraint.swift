//
//  NSLayoutConstraint.swift
//  ExamCustomKeyboard
//
//

import Foundation
import UIKit

extension NSLayoutConstraint{
    
    //制約の比較。同一タイプだったらtrue
    func isEqualConstraintType(compareTarget : NSLayoutConstraint) -> Bool{
        if(self.firstItem.isEqual(compareTarget.secondItem)
            && self.firstAttribute == compareTarget.firstAttribute) {
                return true
        }
        return false
    }
    
}