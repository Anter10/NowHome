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

// 相关的方法

// 发送JSON数据请求
func sendData(url: String, senddata: [String: String] , view : UIViewController, callBack: @escaping (JSON) ->Void ) -> Bool{
    
    Alamofire.request("http://localhost:8080/XZRY/senddata.jsp", method: .post, parameters:senddata, encoding: URLEncoding.methodDependent).responseJSON { response in
        switch response.result {
        case .success(let data):
            callBack(JSON(data))
        case .failure:
            
            print("请求失败")
        }
    }
    
    return false
}


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
    
    
    
    
 
}





