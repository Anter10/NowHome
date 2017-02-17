//
//  LoginViewTable.swift
//  NowHome
//
//  Created by 郭有超 on 2016/11/26.
//  Copyright © 2016年 郭有超. All rights reserved.
//

import UIKit

class LoginViewTable: UITableViewController , UITextFieldDelegate{
    
    
    
    var LoginButton : UIButton?
    var PhoneOrEmailTextField : UITextField?
    var PasswordField : UITextField?
    var PersonIconImage : UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        self.title = "NowHome.com"
//        self.tableView.bounces = false
        self.tableView.backgroundColor = UIColor.groupTableViewBackground
        let size = self.tableView.bounds
        self.tableView.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height - 50)
        
        let IdLabel = UIButton(frame: CGRect(x: Parameters.ScreenWidthCenter - 60, y: size.height - 100, width: 120, height: 40))
        IdLabel.titleLabel?.font = UIFont(name: "Arial", size: 14)
        IdLabel.titleLabel?.textColor = UIColor.blue
        IdLabel.setTitle("更多操作", for: UIControlState.normal)
        IdLabel.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(IdLabel)
        IdLabel.addTarget(self, action:#selector(MoreCall(_:)), for:.touchUpInside)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 1 {
            return 2
        }
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }else if section == 1{
            return 0
        }else if section == 2{
            return 0
        }
        return 10
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 110
        }else if indexPath.section == 2{
            return 55
        }
        return 50
    }
    
    // 登录服务器
    func LoginServer(_ sender: UIButton){
        
        let MainBar = MainTabBarTable()
        present(MainBar, animated: false, completion: nil)
        print("LoginServer")
    }
    

    // 点击更多的时候调用
    func MoreCall(_ sender: UIButton){
        print("MoreCall")
        let alert = UIAlertController(title: "", message: "请选择操作", preferredStyle: UIAlertControllerStyle.actionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel){
            (result : UIAlertAction) -> Void in
            print("Cancel")
        }
        
        let okAction = UIAlertAction(title: "注册账号", style: UIAlertActionStyle.default){
            (result : UIAlertAction) -> Void in
            // 注册账号 
            let backButton = UIBarButtonItem()
            backButton.title = "注册账号"
            self.navigationItem.backBarButtonItem = backButton
            let registView = RegisterViewTable()
            self.show(registView, sender: nil)        }
        
        let forgetAction = UIAlertAction(title: "忘记密码", style: UIAlertActionStyle.default){
           
            (result : UIAlertAction) -> Void in
            let backButton = UIBarButtonItem()
            backButton.title = "找回密码"
            self.navigationItem.backBarButtonItem = backButton
            let name = FindPasswordTable()
            self.show(name, sender: nil)
            print("OK")
        }
        
        
        // 验证码登录
        let codeAction = UIAlertAction(title: "验证码登录", style: UIAlertActionStyle.default){
            
            (result : UIAlertAction) -> Void in
            let backButton = UIBarButtonItem()
            backButton.title = "验证码登录"
            self.navigationItem.backBarButtonItem = backButton
            let name = CodeViewTable()
            self.show(name, sender: nil)
            print("OK")
        }

        alert.addAction(cancelAction)
       
        alert.addAction(forgetAction)
        alert.addAction(okAction)
        alert.addAction(codeAction)
        self.present(alert, animated: true){
            Void in
            
            print("Finsih")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //收起键盘
        textField.resignFirstResponder()
        //打印出文本框中的值
        print("输入的什么 " , String(describing: self.PasswordField?.text))
        print("输入的什么 " , String(describing: self.PhoneOrEmailTextField?.text))
        return true;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        // Configure the cell...
        cell.selectedBackgroundView = UIView()
       
        if indexPath.section == 0 {
           // 设置用户的头像
           cell.backgroundColor = UIColor.groupTableViewBackground
           PersonIconImage = UIImageView(frame: CGRect(x: Parameters.ScreenWidthCenter - 40, y: 5, width: 80, height: 80))
           let image = UIImage(named:"boy-5.png")
           PersonIconImage?.layer.cornerRadius  = 40
           // 设置图片的外围圆框*
           PersonIconImage?.layer.masksToBounds = true
           PersonIconImage?.layer.borderWidth   = 0
           PersonIconImage?.image               = image
           cell.addSubview(PersonIconImage!)
        }else if indexPath.section == 1{
           cell.backgroundColor = UIColor.white
            if indexPath.row == 0 {
                let upsize = CGFloat(5)
                PhoneOrEmailTextField = UITextField(frame: CGRect(x: 70, y: upsize, width: Parameters.InputSize.0, height: Parameters.InputSize.1))
                let IdLabel = UILabel(frame: CGRect(x: 10, y: upsize, width: 120, height: 40))
                IdLabel.font = UIFont.boldSystemFont(ofSize: 22)
                cell.addSubview(IdLabel)
                IdLabel.text = "账号: "
                cell.addSubview(PhoneOrEmailTextField!)
                PhoneOrEmailTextField?.font = UIFont.systemFont(ofSize: 18)
//                PhoneOrEmailTextField?.borderStyle = UITextBorderStyle.roundedRect
                PhoneOrEmailTextField?.delegate=self
                PhoneOrEmailTextField?.returnKeyType = UIReturnKeyType.next
                PhoneOrEmailTextField?.clearButtonMode = .whileEditing
                PhoneOrEmailTextField?.minimumFontSize=18
                PhoneOrEmailTextField?.adjustsFontSizeToFitWidth=true
                PhoneOrEmailTextField?.placeholder = "请输入手机号/帐号"
                PhoneOrEmailTextField?.keyboardAppearance = .alert
                PhoneOrEmailTextField?.keyboardType  = .numberPad
            }else if indexPath.row == 1 {
                let upsize = CGFloat(5)
                PasswordField = UITextField(frame: CGRect(x: 70, y: upsize, width: Parameters.InputSize.0, height: Parameters.InputSize.1))
                let PwdLabel = UILabel(frame: CGRect(x: 10, y: upsize, width: 120, height: 40))
                PwdLabel.font = UIFont.boldSystemFont(ofSize: 22)
                cell.addSubview(PwdLabel)
                PwdLabel.text = "密码: "
//                PasswordField?.borderStyle = UITextBorderStyle.roundedRect
                PasswordField?.delegate=self
                PasswordField?.returnKeyType = UIReturnKeyType.send
                PasswordField?.isSecureTextEntry = true
                PasswordField?.minimumFontSize=18
                PasswordField?.clearButtonMode = .whileEditing
                PasswordField?.adjustsFontSizeToFitWidth=true
                cell.addSubview(PasswordField!)
                PasswordField?.font = UIFont.systemFont(ofSize: 18)
                PasswordField?.placeholder = "请输入密码"
            }
            
        }
        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        if indexPath.section == 2{
            cell.backgroundColor = UIColor.groupTableViewBackground
            cell.selectionStyle  = .none
            LoginButton = UIButton(frame: CGRect(x: 0, y: 15, width: Parameters.LoginButtonSize.0, height: Parameters.LoginButtonSize.1))
            cell.addSubview(LoginButton!)
            LoginButton?.backgroundColor = UIColor.green
            LoginButton?.addTarget(self, action:#selector(LoginServer(_:)), for:.touchUpInside)
//            LoginButton?.titleLabel?.backgroundColor = UIColor.black
            LoginButton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
            LoginButton?.titleLabel?.textColor = UIColor.black
            LoginButton?.setTitle("登录", for: UIControlState.normal)
        }
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
