//
//  OrderListTableViewCell.swift
//  楼下100-配送员
//
//  Created by yangyifan on 15/8/29.
//  Copyright (c) 2015年 womenshuo. All rights reserved.
//

import UIKit

class OrderListTableViewCell: UITableViewCell {
    
    var orderSn: UILabel!//订单编号
    var createDate:UILabel!//订单创建时间
    var hr:UIProgressView!//分割线
    var totalMoney:UILabel!//订单支付总金额
    var GoodsTotlaNumber:UILabel!//商品总数
    var fetchBtn: UIButton!//提货按钮
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        orderSn = UILabel(frame: CGRect(x: 21, y: 15, width: 280, height: 15))
        
        createDate = UILabel(frame: CGRect(x: 21, y: 38, width: 280, height: 15))
        
        hr = UIProgressView(frame:  CGRect(x: 21, y: 68, width: 280, height: 1))
        hr.progress = 1
        hr.progressTintColor = UIColor.grayColor()
        
        totalMoney = UILabel(frame: CGRect(x: 21, y: 80, width: 66, height: 15))
        totalMoney.textColor = UIColor.redColor()
        totalMoney.font = UIFont(name:"American Typewriter", size:18)
        
        GoodsTotlaNumber = UILabel(frame: CGRect(x: 88, y: 80, width: 60, height: 15))
        GoodsTotlaNumber.textColor = UIColor.grayColor()
        GoodsTotlaNumber.font = UIFont(name: "American Typewriter", size: 14)
        
        fetchBtn = UIButton(frame:  CGRect(x: 281, y: 80, width: 75, height: 25))
        fetchBtn.setTitle("接单", forState:UIControlState.Normal)
        fetchBtn.backgroundColor = UIColor.redColor()
        
        self.addSubview(orderSn)
        self.addSubview(createDate)
        self.addSubview(hr)
        self.addSubview(totalMoney)
        self.addSubview(GoodsTotlaNumber)
        self.addSubview(fetchBtn)
        
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
