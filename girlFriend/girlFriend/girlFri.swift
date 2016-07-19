//
//  girlFri.swift
//  girlFriend
//
//  Created by ffm on 16/7/3.
//  Copyright © 2016年 ITPanda. All rights reserved.
//

//arc4random_uniform(区间大小) +区间最小值＝区间内随机数

import Foundation

enum eDateTo:Int {
    case 看电影
    case 吃饭
    case 喝酒撸串
    case 逛街
    case 运动
    case 打代码
}
enum eEducation:Int {
    case 高中
    case 本科
    case 大专
    case 研究生
    case 硕士
}
enum eCity:Int {
    case 广州
    case 深圳
    case 北京
    case 上海
    case 沈阳
    case 山西
    case 香港
    case 大连
}
enum eMood:Int {
    case 😀
    case 😁
    case 😐
    case 😑
    case 😔
    case 😒
    case 😤
    case 😡
    case 👿
}

public class girlFriend:NSObject{
    var name:String = "abc"
    var age:Int    = 20
    var wealth:Int  = 1000000
    var education:eEducation = eEducation.本科
    var city:eCity = eCity.广州
    var mood:eMood = eMood.😀
    var canDateTo:eDateTo = eDateTo.打代码

    public func date(){
        print("     \(self.name)可以跟你约会去：",terminator:"")
        for i in 0...arc4random()%5 {
            print( "\(eDateTo(rawValue: Int(i))!) ",terminator:"")
        }
        print()
    }
    

    override init() {
        
        /*
         逐个随机生成字符character，再拼接进字符串
         Character类没有以Int作为参数的初始化方法，但Character能通过UnicodeScalar类型来初始化，而UnicodeScalar
         类型又能通过Int类型来初始化。
         */
        
        var name:String = ""
        var randNum = 65+arc4random()%26                        //首字母大写
        var ch = Character(UnicodeScalar(randNum))
        name.append(ch)
        
        for _ in 0...Int(arc4random_uniform(7))+1 {
            randNum = 97+arc4random()%26
            ch = Character(UnicodeScalar(randNum))
            name.append(ch)
        }
        
        self.name = name
        self.age = Int(arc4random_uniform(12)+18)
        self.wealth = random()/100
        self.education = eEducation(rawValue: Int(arc4random_uniform(5)))!
        self.city = eCity(rawValue: Int(arc4random_uniform(8)))!
        self.mood = eMood(rawValue: Int(arc4random_uniform(9)))!
    }
    
    public override var description: String {
        let str1 = "Name:\(self.name), Age:\(self.age), Wealth:\(self.wealth), "
        let str2 = "Education:\(self.education), City:\(self.city), *Recent mood:\(self.mood)"
        return str1 + str2
        
    }
    
}