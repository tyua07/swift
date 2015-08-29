//
//  OrderListViewController.swift
//  楼下100-配送员
//
//  Created by yangyifan on 15/8/29.
//  Copyright (c) 2015年 womenshuo. All rights reserved.
//

import UIKit

class OrderListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let btns = ["处理中", "待提货", "配送中", "已完成"]//按钮组对应名称

    @IBOutlet var btnTabView: UIView!//按钮组
    @IBOutlet var orderListTableView: UITableView!//订单列表Table View
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //循环创建按钮
        createOrderListTabButton()
        
        //订单列表
        orderListTableView.dataSource = self
        orderListTableView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    //循环创建按钮
    func createOrderListTabButton(){
        
        //获得当前屏幕宽度
        var width = UIScreen.mainScreen().bounds.width
        
        
        //除以4 获得每个按钮的宽度
        var btnWitdh = Int(width / 4)+1
        
        for index in 0...3{
            var current_btn_x = Int(btnWitdh * index)
            println(current_btn_x)
            var btn = UIButton(frame: CGRect(x: current_btn_x, y: 0, width: btnWitdh, height: 35))
            btn.setTitle(btns[index], forState: UIControlState.Normal)
            btn.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
            self.btnTabView.addSubview(btn)
        }
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cellId = "order_list"
        
        var cell:OrderListTableViewCell? = orderListTableView.dequeueReusableCellWithIdentifier(cellId) as? OrderListTableViewCell
        
        if(cell == nil){
            cell = OrderListTableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: cellId)
        }
        
        cell?.orderSn.text = "订单号：" + "150828200237211816"
        cell?.createDate.text = "下单时间：" + "2015-08-29 12:12:11"
        cell?.totalMoney.text = "￥" + "180"
        cell?.GoodsTotlaNumber.text = "共" + "3" + "件"
        
        
        return cell!
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 110
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
