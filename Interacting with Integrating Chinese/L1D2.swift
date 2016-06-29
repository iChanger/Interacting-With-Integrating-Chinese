//
//  L1D2.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 5/18/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation

class L1D2 : UITableViewController {
    
    var L1D2Vocab = [String]()
    
    override func viewDidLoad(){
        L1D2Vocab = ["是", "老师", "吗", "不", "学生", "也", "人", "中国", "北京", "美国", "纽约"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L1D2Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L1D2 = tableView.dequeueReusableCellWithIdentifier(L1D2Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L1D2.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L1D2.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L1D2.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L1D2.textLabel?.font = UIFont.systemFontOfSize(36)
        L1D2.textLabel?.text = L1D2Vocab[indexPath.row]
        L1D2.textLabel?.textColor = UIColor.whiteColor()
        return L1D2;
    }
    
}