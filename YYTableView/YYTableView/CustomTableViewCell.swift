//
//  CustomTableViewCell.swift
//  YYTableView
//
//  Created by Domo on 2018/6/27.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit
// 自定义cell
class CustomTableViewCell: UITableViewCell {
    var iconImage     : UIImageView?
    var titleLabel    : UILabel?
    var subTitleLabel : UILabel?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI()
    }
    
    func setUpUI(){
        // 图片
        iconImage = UIImageView(frame: CGRect(x:10, y: 10, width:60, height: 60))
        self.addSubview(iconImage!)
        
        // 大标题
        titleLabel = UILabel(frame: CGRect(x:(iconImage?.frame.size.width)!+20, y:10, width: self.frame.size.width-(iconImage?.frame.size.width)!+20, height:30))
        titleLabel?.textColor = UIColor.red
        self.addSubview(titleLabel!)
        
        // 副标题
        subTitleLabel = UILabel(frame: CGRect(x:(iconImage?.frame.size.width)!+20, y:(titleLabel?.frame.size.height)!+20, width:self.frame.size.width-(iconImage?.frame.size.width)!+20, height: 30))
        subTitleLabel?.font = UIFont.systemFont(ofSize: 14)
        subTitleLabel?.textColor = UIColor.purple
        self.addSubview(subTitleLabel!)
    }
    
    // 给cell赋值，项目中一般使用model，我这里直接写死了
    func setValueForCell(){
        iconImage?.image = UIImage(named:"image")
        titleLabel?.text = "大大大大的标题"
        subTitleLabel?.text = "副副副副的标题"
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
