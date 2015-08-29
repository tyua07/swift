//
//  OrderTabViewController.swift
//  楼下100-配送员
//
//  Created by yangyifan on 15/8/29.
//  Copyright (c) 2015年 womenshuo. All rights reserved.
//

import UIKit

class OrderTabViewController: UIViewController {

    var bar:UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //创建tab
        createOrderListTabButton()
        
        

        // Do any additional setup after loading the view.
    }
    
    //循环创建按钮
    func createOrderListTabButton(){
        //获得当前屏幕宽度
        var width = UIScreen.mainScreen().bounds.width
        
        //除以4 获得每个按钮的宽度
        var btnWitdh = width / 4
        println(btnWitdh)
        for index in 1...4{
            //var current_btn_x = (btnWitdh * index) as? Int
            //var btn = UIButton(frame: CGRect(x: current_btn_x, y: 0, width: btnWitdh, height: 35)))
            //self.addSubView(btn)
        }
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
