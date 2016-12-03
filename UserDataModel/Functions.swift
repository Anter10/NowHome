//
//  Functions.swift
//  NowHome
//
//  Created by 郭有超 on 2016/11/20.
//  Copyright © 2016年 郭有超. All rights reserved.
//

import Foundation

import UIKit

import SwiftyJSON

// 解析   JSON  字符串的方法
func getJSONData(jsonString : String) -> [[String: Any]] {
    let jsonData = jsonString.data(using: String.Encoding.utf8)
    let jsons    = try! JSONSerialization.jsonObject(with: jsonData!,
                                                     options: JSONSerialization.ReadingOptions.mutableContainers) as! [[String: Any]]
    
    return jsons
}
