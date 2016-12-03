//
//  Paramters.swift
//  NowHome
//
//  Created by 郭有超 on 2016/11/26.
//  Copyright © 2016年 郭有超. All rights reserved.
//


import UIKit
import Foundation

import SwiftyJSON
import Alamofire




class Parameters {
    // 屏幕尺寸
    static let ScreenSize         = UIScreen.main.bounds
    // 屏幕中间
    static let ScreenCenter       = (Parameters.ScreenSize.width / 2, Parameters.ScreenSize.height / 2)
    // 屏幕宽的中间
    static let ScreenWidthCenter  = Parameters.ScreenSize.width  / 2
    // 屏幕高的中间
    static let ScreenHeightCenter = Parameters.ScreenSize.height / 2
    // 登录输入框的尺寸
    static let InputSize  = (Parameters.ScreenSize.width / 1.4, CGFloat(40))
    // 一般界面的按钮尺寸
    static let LoginButtonSize = (Parameters.ScreenSize.width, CGFloat(40))
    // 验证码输入框的大小
    static let CodeInputSize = (Parameters.ScreenWidthCenter - 40, CGFloat(40))
    // 发送验证码框的大小
    static let InputCodeButtonSize = ( CGFloat(100), CGFloat(40))
    
    
    
    
    // 相关的方法
    
    // 发送JSON数据请求
    static func sendData(url: String, senddata: [String: String] , view : UIViewController, callBack: @escaping (JSON) ->Void ) -> Bool{
        print("发送的数据  = ",senddata)
        let headers: HTTPHeaders = [
            "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
            "Accept": "application/json"
        ]
        let parameters1:[String : Any] = [
            "foo": "bar",
            "baz": ["a", 1],
            "qux": [
                "x": 1,
                "y": 2,
                "z": 3
            ]
    ]
        var sss = "12222"
        var abc = ["name":sss]
        Alamofire.request("http://localhost:8080/XZRY/senddata.jsp", method: .post, parameters:abc, encoding: URLEncoding.queryString).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            var screen = UIScreen.main.bounds
            print("屏幕尺寸   =   ",screen)
            if let data = response.result.value  {
                let len = JSON(data)
                callBack(len)
//                print("JSON: \(JSON(data))")
            }
        }
        return false
    }
}





