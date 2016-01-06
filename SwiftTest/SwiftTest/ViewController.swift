//
//  ViewController.swift
//  SwiftTest
//
//  Created by 杨振民 on 15/12/29.
//  Copyright © 2015年 杨振民. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let anPoint:AnotherPoint = AnotherPoint(x: 29,y:40)
        anPoint.CNY = 340
        anPoint.display()
        
        
        var lb:UILabel = UILabel()
        lb.backgroundColor = UIColor.redColor()
        lb.text = "我的我的我的"
        self.view.addSubview(lb)
        weak var ws:UIViewController? = self
        lb.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self.view).offset(10)
            make.top.equalTo(10)
            make.size.equalTo(CGSizeMake(40, 40))
        }
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

