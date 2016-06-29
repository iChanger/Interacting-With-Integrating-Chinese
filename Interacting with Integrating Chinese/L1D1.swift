//
//  L1D1.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 5/18/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation

class L1D1 : UITableViewController {
    
    var L1D1Vocab = [String]()
    
    override func viewDidLoad(){
        L1D1Vocab = ["你", "好", "请", "问", "贵", "姓", "我", "呢", "小姐", "叫", "什么", "名字", "先生", "李友", "王朋"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L1D1Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L1D1 = tableView.dequeueReusableCellWithIdentifier(L1D1Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L1D1.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L1D1.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L1D1.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L1D1.textLabel?.font = UIFont.systemFontOfSize(36)
        L1D1.textLabel?.text = L1D1Vocab[indexPath.row]
        L1D1.textLabel?.textColor = UIColor.whiteColor()
        return L1D1;
    }
    
}