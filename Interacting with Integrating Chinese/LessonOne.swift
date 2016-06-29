//
//  LessonOne.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 5/17/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation

class LessonOne : UITableViewController {
    
    var lessonOneDialogue = [String]()
    
    override func viewDidLoad(){
        lessonOneDialogue = ["Dialogue 1: Exchanging Greetings", "Dialogue 2: Asking about Someone's Nationality"]
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
}
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessonOneDialogue.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L1D = tableView.dequeueReusableCellWithIdentifier(lessonOneDialogue[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L1D.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L1D.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L1D.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L1D.textLabel?.text = lessonOneDialogue[indexPath.row]
        L1D.textLabel?.textColor = UIColor.whiteColor()
        return L1D;
    }
    
}