//
//  MainTabBarTable.swift
//  NowHome
//
//  Created by 郭有超 on 2016/11/27.
//  Copyright © 2016年 郭有超. All rights reserved.
//

import UIKit

class MainTabBarTable: UITabBarController {
    
    var mc  =  MessageCenter()
    var hc  =  HealthCenter()
    var pc  =  PersonCenter()
    var allController:[UIViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mc.tabBarItem.title = "消息中心"
        hc.tabBarItem.title = "健康数据"
        pc.tabBarItem.title = "个人中心"
        self.view.backgroundColor = UIColor.groupTableViewBackground
        var allController = [mc,hc,pc] as [UIViewController]
        self.viewControllers = allController
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
