//
//  LessonFour.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 8/16/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class LessonFour: UIViewController {

    @IBAction func Lesson4P1(sender: AnyObject) {
        var storyboard = UIStoryboard(name: "L4Storyboard", bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier("L4D1") as! UITableViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func Lesson4P2(sender: AnyObject) {
        var storyboard = UIStoryboard(name: "L4Storyboard", bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier("L4D2") as! UITableViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
