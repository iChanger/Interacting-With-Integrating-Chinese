//
//  LessonTwo.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 5/18/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation

class LessonTwo : UITableViewController {
    
    var lessonTwoDialogue = [String]()
    
    override func viewDidLoad(){
        self.tableView.rowHeight = 75
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Impressionist"))
        lessonTwoDialogue = ["Dialogue 1: Looking at a Family Photo", "Dialogue 2: Asking About Someone's Family"]
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer());
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessonTwoDialogue.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var L2D = tableView.dequeueReusableCellWithIdentifier(lessonTwoDialogue[indexPath.row], forIndexPath: indexPath) as! UITableViewCell
        L2D.textLabel?.text = lessonTwoDialogue[indexPath.row]
        L2D.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        L2D.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L2D.detailTextLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        L2D.textLabel?.textColor = UIColor.whiteColor()
        return L2D;
    }
    
}