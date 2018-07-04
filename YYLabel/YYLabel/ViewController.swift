//
//  ViewController.swift
//  YYLabel
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
        //常规创建
        self.view.backgroundColor = UIColor.white
        let label = UILabel(frame:CGRect(x:10, y:20, width:ScreenWidth-20, height:ScreenHeight/4))
        label.backgroundColor = UIColor.lightGray
        label.text = "这是一条测试的显示数据,this is a test data,但是还不够长,suo yi yao gei ta jia chang yi dian dian"
        self.view.addSubview(label)
        
        //label属性
        // 颜色
        label.textColor = UIColor.red
        // 字体
        label.font = UIFont.systemFont(ofSize: 24)
        // 对齐方式
        label.textAlignment = NSTextAlignment.center
        // 多行显示
        label.numberOfLines = 3
        // 阴影
        label.shadowColor = UIColor.yellow
        label.shadowOffset = CGSize.init(width:2, height:2)
        
        label.lineBreakMode = NSLineBreakMode.byTruncatingTail
        // 高亮
        label.isHighlighted = true
        label.highlightedTextColor = UIColor.green
        
        // 富文本
        let attributeString = NSMutableAttributedString.init(string: "这是一条测试富文本的字符串")
        //从文本0开始6个字符字体HelveticaNeue-Bold,16号
        attributeString.addAttribute(NSAttributedStringKey.font, value: UIFont.init(name: "HelveticaNeue-Bold", size: 23) ?? UIFont.boldSystemFont(ofSize: 23), range: NSRange.init(location: 0, length: 6))
        //设置富文本字体颜色
        attributeString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.brown, range: NSMakeRange(0, 6))
        //设置文字背景颜色
        attributeString.addAttribute(NSAttributedStringKey.backgroundColor, value: UIColor.red, range: NSMakeRange(6, 5))
        label.attributedText = attributeString
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

