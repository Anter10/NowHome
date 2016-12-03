//
//  MessageCenter.swift
//  NowHome
//
//  Created by 郭有超 on 2016/11/26.
//  Copyright © 2016年 郭有超. All rights reserved.
//

import UIKit

class MessageCenter: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hidesBarsOnSwipe = true
        let image = UIImage(contentsOfFile: "add.png")
        let Bar = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.done, target: nil, action: nil)
        self.viewControllers = [MessageCenterTable()]

        self.navigationItem.setLeftBarButton(Bar, animated: false)
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
