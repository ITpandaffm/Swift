//
//  Stu.swift
//  Stu
//
//  Created by ffm on 16/7/1.
//  Copyright © 2016年 ITPanda. All rights reserved.
//

import Foundation

struct Stu {
    var name:String
    var maths:Float                                                     //用Float足矣，节省内存
    var english:Float
    var avr:Float
   /*因为每个学生都要算平均分，所以干脆把算平均分在构造函数中解决了*/
    
    init (name:String,maths:Float,english:Float){
        self.name=name;
        self.maths=maths;
        self.english=english;
        self.avr=(maths+english)/2;
    }
    
}