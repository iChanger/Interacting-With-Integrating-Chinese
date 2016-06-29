//
//  Tian1VC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 8/8/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class Tian1VC: UIViewController {
        
        @IBOutlet weak var webViewBG: UIWebView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            var filePath2 = NSBundle.mainBundle().pathForResource("", ofType: "gif")
            var gif = NSData(contentsOfFile: filePath2!)
            webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
            webViewBG.userInteractionEnabled = false;
            self.view.addSubview(webViewBG)
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