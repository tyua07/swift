//  登录控制器
//  LoginViewController.swift
//  楼下100-配送员
//
//  Created by yangyifan on 15/8/26.
//  Copyright (c) 2015年 womenshuo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var navgationBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var width = UIScreen.mainScreen().bounds.width
        
        //var statusBar = UIView(frame: )
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(sender: UIButton) {
        if(userName.text == "yangyifan" && password == "123456"){
            alter("登录成功")
            self.password.resignFirstResponder()
        }else{
            alter("账户或者密码不正确")
        }
    }
    
    func alter(message: String){
        var alter = UIAlertView(title: "提示", message: message, delegate: self, cancelButtonTitle: "确认")
        alter.show()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
