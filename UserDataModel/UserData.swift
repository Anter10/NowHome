//
//  UserData.swift
//  NowHealth
//
//  Created by 郭有超 on 2016/11/20.
//  Copyright © 2016年 郭有超. All rights reserved.
//

import Foundation

class UserData  {
    // 用户账号
    private var Id            :  String = ""
    // 用户名称
    private var Name          :  String = ""
    // 用户上次登录时间
    private var UpLoginTime   : String = ""
    // 得到 所有标题数据
    private var AllTitleDatas : [AllTitleData]? = nil
    // 得到家庭的数据
    private var HomeDatas     : [HomeData]?     = nil
    
    // 构造函数
    init(id: String , name : String) {
        self.Id     =  id
        self.Name   =  name
    }
    
    // 得到用户的ID
    func getId() -> String {
        return self.Id
    }
    
    // 得到用户的名称
    func getName() -> String {
        return self.Name
    }
    
    // 得到用户的上次登录时间
    func getUpLoginTime() -> String {
        return self.UpLoginTime
    }
    
    // 初始化 所有标题数据
    
    
    //初始化所有家庭数据
    
    
    // 得到战斗单位的
    func getAllTitle() -> [AllTitleData] {
        return self.AllTitleDatas!
    }
    
    // 得到家庭数据
    func getHomeDatas() -> [HomeData] {
        return self.HomeDatas!
    }
    
}
