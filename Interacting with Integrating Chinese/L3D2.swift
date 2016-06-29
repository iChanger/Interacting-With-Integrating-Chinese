//
//  L3D2.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/31/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class L3D2: UITableViewController {
  
    var L3D2Vocab = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        L3D2Vocab = ["现在", "刻", "事儿", "今天", "很", "忙", "明天", "晚饭", "为什么", "因为", "还", "同学", "认识", "朋友"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L3D2Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L3D2 = tableView.dequeueReusableCellWithIdentifier(L3D2Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L3D2.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L3D2.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L3D2.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L3D2.textLabel?.font = UIFont.systemFontOfSize(36)
        L3D2.textLabel?.text = L3D2Vocab[indexPath.row]
        L3D2.textLabel?.textColor = UIColor.whiteColor()
        return L3D2;
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
