//
//  ViewController.swift
//  YYButton
//
//  Created by Domo on 2018/6/26.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit
let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "UIButton小解"
        
        // 创建一个常规的button
        let button = UIButton(type:.custom)
        button.frame = CGRect(x:ScreenWidth/2-40, y:84, width:80, height:30)
        button.setTitle("FirstBtn", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        //无参数点击事件
        //button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        //带button参数传递
        button.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        //字体
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        //设置圆角
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5.0
        //设置边框
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 1.5
        
        //图片文字按钮
        let button1 = UIButton(frame:CGRect(x:ScreenWidth/2-60, y:ScreenHeight/4, width:120, height:120))
        self.view.addSubview(button1)
        button1.setTitle("图片按钮", for: .normal)
        button1.setImage(UIImage(named:"hightImage.png"), for: .normal)
        button1.backgroundColor = UIColor.red
        // 上左下右 根据自己图片和文字布局自行调整参数设置
        button1.imageEdgeInsets = UIEdgeInsetsMake(0, 25, 50, 0)
        button1.titleEdgeInsets = UIEdgeInsetsMake(0, -25, -50, 10)
        
    }
    //无参数点击事件点击事件
//    @objc func buttonClick(){
//        print("点击了button")
//    }
    
    @objc func buttonClick(button:UIButton ){
        button.isSelected = !button.isSelected
        if button.isSelected {
            button.setTitle("Selected", for: .normal)
        }else{
            button.setTitle("NoSelected", for: .normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

