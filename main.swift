//
//  main.swift
//  MultiplicationTable
//
//  Created by ffm on 16/7/1.
//  Copyright © 2016年 ITPanda. All rights reserved.
//

/*
 18行中另外声明str 把 \(a) x \(b) = \(a*b) 放一起，是因为
 如果不放在str里而直接用print输出，因为用了terminator，会报错，提示用括号把元祖参数包起来
 为了乘法表的排版格式，也是挺拼的。
 */


/*  7.1修改
 根据要求换成了下三角的形式  发现了原来print("")语句本来就有换行println的功能 
 如果还在里面加转义换行符\n的话就会换两行了    (特地测试验证了一下）
 修改之后乘法表更加紧凑美观了
 */

/* 
 a跟b直接在for中定义即可 不用另外定义
 同时在使用for的时候因为有重载 所以注意在写完for之后与循环体花括号要有空格（或者干脆移到下一行
 */

import Foundation

for b in 1...9{
    for a in 1...b{
        print("\(a) x \(b) = \(a*b)\t",terminator:"")
    }
    print("")
}


