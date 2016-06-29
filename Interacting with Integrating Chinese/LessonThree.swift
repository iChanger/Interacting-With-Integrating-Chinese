//
//  LessonThree.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/31/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class LessonThree: UIViewController {

    @IBAction func switchStoryboard(sender: UIButton) {
        var storyboard = UIStoryboard(name: "L3Storyboard", bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier("L3D1") as! UITableViewController

        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func switchStoryboard2(sender: UIButton) {
        var storyboard = UIStoryboard(name: "L3Storyboard", bundle: nil)
        var controller = storyboard.instantiateViewControllerWithIdentifier("L3D2") as! UITableViewController
        
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
