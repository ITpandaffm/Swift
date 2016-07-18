//
//  main.swift
//  Stu
//
//  Created by ffm on 16/7/1.
//  Copyright © 2016年 ITPanda. All rights reserved.
//

import Foundation

var arr:[Stu] = [Stu]()

for i in 1...11{
    var student = Stu(name: "stu\(i)", maths: Float(80-3*i), english: Float(70+2*i))
    arr.append(student)
}

for i in 0...arr.count-2{
    for j in i+1...arr.count-1{
        if(arr[i].avr>arr[j].avr){
            var temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
        }
    }
}

print(arr)