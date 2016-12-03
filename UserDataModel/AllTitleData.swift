//
//  AllTitleData.swift
//  NowHealth
//
//  Created by 郭有超 on 2016/11/20.
//  Copyright © 2016年 郭有超. All rights reserved.
//

import Foundation


class AllTitleData{
    // 标题的ID
    private var TitleId          : String    = ""
    // 得到英文名称
    private var EnglishName      : String    = ""
    // 标题的名称
    private var TitleName        : String    = ""
    // 该标题的功能是否开启
    private var TitleHasOpen     : Bool      = false
    // 标题 正常状态下的图标
    private var TitleNormalImage : String    = ""
    // 标题 选择状态下的图标
    private var TitleSelectImage : String    = ""
    // 标题提示 信息数量
    private var TitleShowNumber  : Int       =  0
    // 标题所在功能的tab ID
    private var TitleTabId       : Int       =  0
    // 标题所属 部分
    private var TitleSection     : Int       =  0
    // 标题 所属部分的下标
    private var TitleIndex       : Int       =  0
    
    // 得到标题 的ID
    func getTitleId() -> String {
        return self.TitleId
    }
    
    // 得到标题 的名称
    func getTitleName() -> String {
        return self.TitleName
    }
    
    // 得到英文名称
    func getEnglishName() -> String {
        return self.EnglishName
    }
    // 得到标题 的功能是否开启
    func getTitleHasOpen() -> Bool {
        return self.TitleHasOpen
    }
    
    // 得到标题 正常状态下的图标
    func getTitleNormalImage() -> String {
        return self.TitleNormalImage
    }

    // 得到标题选择状态下的图标
    func getTitleSelectImage() -> String {
        return self.TitleSelectImage
    }
    
    // 得到标题的信息数量
    func getTitleShowNumber() -> Int {
        return self.TitleShowNumber
    }

    // 标题所在的tab ID
    func getTitleTabId() -> Int {
        return self.TitleTabId
    }

    // 标题所属 部分
    func getTitleSection() -> Int {
        return self.TitleSection
    }
    
    // 得到标题下标
    func getTitleIndex() -> Int {
        return self.TitleIndex
    }
    
    
    
    // 构造函数
    init() {
        
    }
    
}
