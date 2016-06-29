//
//  L3D1.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/31/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class L3D1 : UITableViewController {
    
    var L3D1Vocab = [String]()
    
    override func viewDidLoad(){
        L3D1Vocab = ["九月", "月", "十二", "号", "星期", "星期四", "天", "生日", "今年", "多", "大", "十八", "岁", "吃", "饭", "怎么样", "太...了","谢谢","喜欢","菜","还是","可是","我们","点","半","晚上","见","再见","英国"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))

    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L3D1Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L3D1 = tableView.dequeueReusableCellWithIdentifier(L3D1Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L3D1.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L3D1.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L3D1.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L3D1.textLabel?.font = UIFont.systemFontOfSize(36)
        L3D1.textLabel?.text = L3D1Vocab[indexPath.row]
        L3D1.textLabel?.textColor = UIColor.whiteColor()
        return L3D1;
    }
    
}