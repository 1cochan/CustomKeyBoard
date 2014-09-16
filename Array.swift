//
//  Array.swift
//  ExamCustomKeyboard
//
//  Created by 足立 晃一 on 2014/09/15.
//  Copyright (c) 2014年 default. All rights reserved.
//

import Foundation

extension Array{
    func diff<S: Equatable>(a: [S], b: [S]) -> [S] {
        return a.filter { !contains(b, $0) }
    }

    
    func remove(object : AnyObject) -> Array{
        
        
        
        
        let filteredArray = self.filter({includeElement -> Bool in
//            if let downcastedSwiftArray = self as? [AnyObject] {
//            }
            return false
        })

        var ret = self.filter({includeElement -> Bool in

//            object.isEqual(inclincludeElementude)
                return true
            }
        )
        return ret
        
    }
}