//
//  ViewController.swift
//  YYTableView
//
//  Created by Domo on 2018/6/27.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var tableView:UITableView!
    var array:[String] = ["纯代码自定义cell", "nib自定义cell"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "UITableIView小解"
        self.view.backgroundColor = UIColor.white
        tableView = UITableView(frame:CGRect(x:0, y:0, width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    // 每个分区行数（默认分区为一个）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    // 行高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    // cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "CellIdentifier")
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    // cell点击事件处理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = CustomCellController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 1:
            let vc = NibCellController()
            self.navigationController?.pushViewController(vc, animated: true)
            break
        default:
            
            break
        }
    }
}

