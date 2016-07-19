//
//  main.swift
//  girlFriend
//
//  Created by ffm on 16/7/3.
//  Copyright © 2016年 ITPanda. All rights reserved.
/*要求
1.用面向对象思想
2.名字随机
3.年龄随机
4.拥有约会功能
5.将所有女朋友信息输出到控制台
*/

//自加功能，约会可以做的事情随机生成n件（但不重复） n<4
//把随机数与emoji结合起来，新增“最近心情：[表情］"
//新增学历，城市属性，名字随机生成的时候首字母大写，同时年龄经过筛选，排除未成年与30以上的

/*
 7月4号更新：
 1.修改了description方法
 2.名字的随机生成优化（长度也随机）
 3.成员变量不要使用下划线，（与OC中的私有化实例变量区分开）
 */
import Foundation

for _ in 0...100 {
    var girl = girlFriend()
    print(girl)
    girl.date()
}