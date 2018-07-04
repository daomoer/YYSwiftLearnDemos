//
//  ViewController.swift
//  YYUITextView
//
//  Created by Domo on 2018/6/27.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "UITextField小解"
        self.view.backgroundColor = UIColor.white
        let textView = UITextView(frame: CGRect(x:30, y:200, width:UIScreen.main.bounds.width-60, height:200))
        textView.delegate = self
        self.view.addSubview(textView)
        
        //属性设置
        //字体颜色
        textView.textColor = UIColor.purple
        //内容部分链接样式
        textView.linkTextAttributes = [NSAttributedStringKey.foregroundColor.rawValue: UIColor.orange,
                                       NSAttributedStringKey.underlineStyle.rawValue: NSUnderlineStyle.styleSingle.rawValue]
        //边框
        textView.layer.borderColor = UIColor.red.cgColor
        textView.layer.borderWidth = 1.5
        //字体大小
        textView.font = UIFont.systemFont(ofSize: 16)
        //内容可编辑
        textView.isEditable = false
        //内容可选
        textView.isSelectable = true
        //边框圆角设置
        textView.layer.masksToBounds = true
        textView.layer.cornerRadius = 5.0
        //自适应高度
        textView.autoresizingMask = UIViewAutoresizing.flexibleHeight
        
        
        //设置富文本
        let attributeString:NSMutableAttributedString=NSMutableAttributedString(string: "这是一条测试textview的字符串数据，欢迎访问 http://www.baidu.com")
        //设置字体颜色
        attributeString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.green, range: NSMakeRange(0, attributeString.length))
        //文本所有字符字体HelveticaNeue-Bold，16号
        attributeString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "HelveticaNeue-Bold", size: 16)!, range: NSMakeRange(0, attributeString.length))
        //文本0开始5个字符字体HelveticaNeue-Bold，16号
        attributeString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "HelveticaNeue-Bold", size: 26)!, range: NSMakeRange(0, 5))
        //设置字体颜色
        attributeString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.white, range: NSMakeRange(0, 3))
        //设置文字背景颜色
        attributeString.addAttribute(NSAttributedStringKey.backgroundColor, value: UIColor.orange, range: NSMakeRange(3, 3))
        //赋值富文本
        textView.attributedText = attributeString

        
        //内容对齐方式
        textView.textAlignment = NSTextAlignment.center
        /*
         textView.textAlignment = NSTextAlignment.left
         textView.textAlignment = NSTextAlignment.center
         */
        //给文中的特殊部分加上链接，比如手机号，网址邮箱等(需要注意的是如果使用了给特殊部分加上连接要先使内容不可编辑textView.isEditable = false)
        textView.dataDetectorTypes = UIDataDetectorTypes.link
        /*
         textView.dataDetectorTypes = UIDataDetectorTypes.link
         textView.dataDetectorTypes = UIDataDetectorTypes.address
         textView.dataDetectorTypes = UIDataDetectorTypes.calendarEvent
         textView.dataDetectorTypes = UIDataDetectorTypes.shipmentTrackingNumber
         textView.dataDetectorTypes = UIDataDetectorTypes.flightNumber
         textView.dataDetectorTypes = UIDataDetectorTypes.lookupSuggestion
         textView.dataDetectorTypes = UIDataDetectorTypes.phoneNumber
         */
        // 键盘类型
        textView.keyboardType = UIKeyboardType.asciiCapable
        /*
         textView.keyboardType = UIKeyboardType.default
         textView.keyboardType = UIKeyboardType.numbersAndPunctuation
         textView.keyboardType = UIKeyboardType.URL
         textView.keyboardType = UIKeyboardType.numberPad
         textView.keyboardType = UIKeyboardType.phonePad
         textView.keyboardType = UIKeyboardType.namePhonePad
         textView.keyboardType = UIKeyboardType.emailAddress
         textView.keyboardType = UIKeyboardType.decimalPad
         textView.keyboardType = UIKeyboardType.twitter
         */
        // 键盘返回类型
        textView.returnKeyType = UIReturnKeyType.continue
        /*
         textView.returnKeyType = UIReturnKeyType.default
         textView.returnKeyType = UIReturnKeyType.go
         textView.returnKeyType = UIReturnKeyType.google
         textView.returnKeyType = UIReturnKeyType.join
         textView.returnKeyType = UIReturnKeyType.next
         textView.returnKeyType = UIReturnKeyType.route
         textView.returnKeyType = UIReturnKeyType.search
         textView.returnKeyType = UIReturnKeyType.send
         textView.returnKeyType = UIReturnKeyType.yahoo
         textView.returnKeyType = UIReturnKeyType.done
         textView.returnKeyType = UIReturnKeyType.emergencyCall
         textView.returnKeyType = UIReturnKeyType.continue
         */

        //
        let mail = UIMenuItem(title: "邮件", action: #selector(ViewController.onMail))
        let weixin = UIMenuItem(title: "微信", action: #selector(ViewController.onWeiXin))
        let menu = UIMenuController()
        menu.menuItems = [mail,weixin]
    }
    
    @objc func onMail(){
        
    }
    
    @objc func onWeiXin(){
        
    }
    // 开始编辑文本的时候触发该方法
    func textViewDidBeginEditing(_ textView: UITextView) {

    }
    // 结束编辑的时候触发该方法
    func textViewDidEndEditing(_ textView: UITextView) {

    }

    //如果返回false，文本视图不能编辑
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        return true
    }

    //如果返回false，表示编辑结束之后，文本视图不可再编辑
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        return true
    }

    //文本视图内容改变时，触发本方法,如果是回车符号，则textView释放第一响应值，返回false
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text ==  "\n") {
            textView.resignFirstResponder()
            return false;
        }
        return true
    }

    //文本视图改变后触发本代理方法
    func textViewDidChange(_ textView: UITextView) {
        
    }
    //文本视图 改变选择内容，触发本代理方法
    func textViewDidChangeSelection(_ textView: UITextView) {
        
    }
    //链接在文本中显示。当链接被点击的时候，会触发本代理方法
    func textView(_ textView: UITextView, shouldInteractWithURL: URL, in characterRange: NSRange) -> Bool{
        return true
    }
    //文本视图允许提供文本附件，文本附件点击时，会触发本代理方法   return true
    func textView(_ textView: UITextView, shouldInteractWith textAttachment: NSTextAttachment, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

