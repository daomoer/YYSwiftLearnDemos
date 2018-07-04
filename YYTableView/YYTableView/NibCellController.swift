//
//  NibCellController.swift
//  YYTableView
//
//  Created by Domo on 2018/6/27.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit

class NibCellController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    let identifier = "NibTableViewCell"
    var tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        tableView = UITableView(frame:CGRect(x:0, y:0, width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        tableView?.delegate = self
        tableView?.dataSource = self
        self.view.addSubview(tableView!)
        // 注册nib
        let nib = UINib.init(nibName: "NibTableViewCell", bundle: nil)
        tableView?.register(nib, forCellReuseIdentifier: identifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        return cell!
    }
}
