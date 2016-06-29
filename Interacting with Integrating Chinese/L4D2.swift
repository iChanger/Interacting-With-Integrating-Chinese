//
//  L4D2.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 8/16/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class L4D2: UITableViewController {
    
    var L4D2Vocab = [String]()
    
    override func viewDidLoad(){
        L4D2Vocab = ["小", "好久","不错","想","觉得","有意思","只","睡觉","算了","找","别人"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return L4D2Vocab.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L4D2 = tableView.dequeueReusableCellWithIdentifier(L4D2Vocab[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L4D2.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L4D2.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L4D2.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L4D2.textLabel?.font = UIFont.systemFontOfSize(36)
        L4D2.textLabel?.text = L4D2Vocab[indexPath.row]
        L4D2.textLabel?.textColor = UIColor.whiteColor()
        return L4D2;
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
