//
//  L2D1.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/15/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation

class L2D1 : UITableViewController {
    
    var L2D1Vocab = [String]()
    
    override func viewDidLoad(){
        L2D1Vocab = ["那", "的", "照片", "这", "爸爸", "妈妈", "个", "女", "孩子", "谁", "她", "姐姐", "男", "弟弟", "他", "大哥", "儿子", "有", "女儿", "没", "高文中"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L2D1Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L2D1 = tableView.dequeueReusableCellWithIdentifier(L2D1Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L2D1.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L2D1.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L2D1.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L2D1.textLabel?.font = UIFont.systemFontOfSize(36)
        L2D1.textLabel?.text = L2D1Vocab[indexPath.row]
        L2D1.textLabel?.textColor = UIColor.whiteColor()
        return L2D1;
    }
    
}