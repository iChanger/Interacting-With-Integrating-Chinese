//
//  L2D2.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/15/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
// 

import Foundation

class L2D2 : UITableViewController {
    
    var L2D2Vocab = [String]()
    
    override func viewDidLoad(){
        L2D2Vocab = ["家", "几", "口", "哥哥", "两", "妹妹", "和", "大姐", "二姐", "做", "工作", "律师", "英文", "都", "大学生", "医生", "白英爱"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L2D2Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L2D2 = tableView.dequeueReusableCellWithIdentifier(L2D2Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L2D2.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L2D2.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L2D2.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L2D2.textLabel?.font = UIFont.systemFontOfSize(36)
        L2D2.textLabel?.text = L2D2Vocab[indexPath.row]
        L2D2.textLabel?.textColor = UIColor.whiteColor()
        return L2D2;
    }
    
}