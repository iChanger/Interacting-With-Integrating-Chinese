//
//  BackTableVC.swift
//  
//
//  Created by Ian Chang on 5/17/15.
//
//

import Foundation

class BackTableVC: UITableViewController    {
    
    var tableArray = [String]();
    
    override func viewDidLoad() {
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        tableArray = ["Home", "Lesson 1", "Lesson 2", "Lesson 3", "Lesson 4", "Lesson 5", "Lesson 6", "Lesson 7", "Lesson 8", "Lesson 9", "Lesson 10"];
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = tableArray[indexPath.row]
        cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        cell.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        cell.textLabel?.textColor = UIColor.whiteColor()
        return cell;
    }

 
    
}