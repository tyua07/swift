//
//  ViewController.swift
//  楼下100-配送员
//
//  Created by yangyifan on 15/7/26.
//  Copyright (c) 2015年 womenshuo. All rights reserved.
//

import UIKit
//import Alamofire

class ViewController: UIViewController {
    


    @IBOutlet var navigation: UINavigationItem!
    @IBOutlet var username: UITextField!//用户名
    @IBOutlet var password: UITextField!//密码
    @IBOutlet var submit: UIButton!//登录按钮
    
    
    override func viewDidLoad() {
        
        //设置
        setting()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //登录
    @IBAction func login(sender: UIButton) {
//        if(username.text == ""){
//            alert("用户名不能为空")
//        }else if(password.text == ""){
//            alert("密码不能为空")
//        }else{
//            //发送请求
//            Alamofire.request(.POST, "http://tidelivery.louxia100.com/app/delivery/user_logion" , parameters:["ver":100, "loginkey":username.text, "password":password.text]).responseJSON(options: NSJSONReadingOptions(), completionHandler: { (request, response, json, error) -> Void in
//                
//                println(json!)
//                var code = json!.valueForKey("code") as! Int
//                
//                if(code == 0){
//                    //var city_id = json!.valueForKey()
//                    //var data = json?.objectForKey("data") as! NSObject
//                    
//                    //println(data.city_id)
//                }else{
//                    self.alert("用户名或者密码错误")
//                }
//                //var code = json!.valueForKey("code") as! [NSDictionary]
//                
//                //if(code != 0 ){
//                    //alert("用户名或者密码错误")
//                //}
//                
//                //var data = json!.valueForKey("data") as! [NSDictionary]
//                
//               // println(data.city_id)
//            })
//            
//        }
        
        

    }
    
    //设置
    func setting(){
        //用户名
        username.placeholder = "请输入手机号"
        
        //密码
        password.placeholder = "请输入密码"
        //navigation.
        submit.backgroundColor = UIColor.redColor()
    }
    
    //弹出框
    func alert(message: String){
        UIAlertView(title: "错误", message: message, delegate: self, cancelButtonTitle: "确认").show();//弹出框
//        alert.title = "错误"
//        alert.message = message
//        alert.addButtonWithTitle("确认")
//        alert.show()
    }
    
    


}

