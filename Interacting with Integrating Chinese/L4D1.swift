//
//  L4D1.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 8/16/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class L4D1: UITableViewController {

    var L4D1Vocab = [String]()
    
    override func viewDidLoad(){
        L4D1Vocab = ["周末", "打球","看","电视","唱歌儿","跳舞","听","音乐","书","对","有的","时候","电影","常常","那","去","外国","请客","昨天","所以"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L4D1Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L4D1 = tableView.dequeueReusableCellWithIdentifier(L4D1Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L4D1.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L4D1.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L4D1.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L4D1.textLabel?.font = UIFont.systemFontOfSize(36)
        L4D1.textLabel?.text = L4D1Vocab[indexPath.row]
        L4D1.textLabel?.textColor = UIColor.whiteColor()
        return L4D1;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
