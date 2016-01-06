//
//  AntherPoint.swift
//  SwiftTest
//
//  Created by 杨振民 on 15/12/29.
//  Copyright © 2015年 杨振民. All rights reserved.
//

import Foundation
class AnotherPoint:NSObject {
    var x:Float?{
        didSet{
            print("didset")
        }
    }
    var y:Float = 0
    
    
    var CNY:Float
    {
     set{
       self.x = newValue
    }
     get{
       return self.x!
        }
     
    }
    
       func display()
    {
        print("\(x),\(y)")
    }
    
    
    
    init(x:Float,y:Float ) {
       self.x = x
       self.y = y
       super.init()
    }

    
}