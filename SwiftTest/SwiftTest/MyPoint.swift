//
//  MyPoint.swift
//  SwiftTest
//
//  Created by 杨振民 on 15/12/29.
//  Copyright © 2015年 杨振民. All rights reserved.
//

import Foundation
struct MyPoint {
    var x:Float = 0
    var y:Float = 0
    mutating func setMyPoint(tempX:Float,tempY:Float)
    {
        self.x = tempX
        self.y = tempY
    }
    func display()
    {
        print("\(x),\(y)")
    }
}