//
//  addSplit.swift
//  addSplit
//
//  Created by ffm on 16/7/3.
//  Copyright © 2016年 ITPanda. All rights reserved.
//
/*
rangeOfString可以查看allStr字符串是否包含指定字符串splitStr
start是NSRange类型
rangeOfString会返回第一次遇到该字符的位置location与长度length (匹配上的字符个数)
*/

import Foundation

extension NSString{
    func split(splitStr: NSString) -> [NSString]{
        var arr = [NSString]()
        var allStr = self
        while true {
            let start = allStr.rangeOfString(splitStr as String)
            if start.location != NSNotFound {
                let swiftAllStr = allStr as String
                let startIndex = swiftAllStr.startIndex.advancedBy(start.location)  //把字符串切开三份
                let endIndex = swiftAllStr.startIndex.advancedBy(start.location+start.length)
                let subStr1 = swiftAllStr.substringToIndex(startIndex)
                allStr = swiftAllStr.substringFromIndex(endIndex)       //略去splitStr,剩余部分继续循环处理
                let ocStr1:NSString = subStr1 as NSString
                //再加入前要判断是否为空，空则不加入（考虑截取首尾端的情况）
                arr.append(ocStr1)
            }else{
             if allStr != "" {
                arr.append(allStr)
                   }
             return arr
            }
        }
    }
}