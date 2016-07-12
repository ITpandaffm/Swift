//
//  main.swift
//  addSplit
//
//  Created by ffm on 16/7/3.
//  Copyright © 2016年 ITPanda. All rights reserved.
//
/*为NSString类添加一个函数func split(splitStr: NSString)-> [NSString]，
 split是把字符串以特定的字符或者字符串做为分割符将字符串分割的功能
 */

/*
7.4修改
 按照点评考虑了如果截取字符串为末尾端的情况
 在加入arr时判断是否为空
 但NSString不可以为nil，所以判断时看是否等于 ""
 */

import Foundation



let str: NSString = "Hello&jikexueyuan&Hello"
print(str.split("&"))
print(str.split("jikexueyuan"))

print(str.split("lo"))