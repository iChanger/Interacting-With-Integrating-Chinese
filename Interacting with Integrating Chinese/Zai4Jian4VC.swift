//
//  Zai4Jian4VC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 8/11/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class Zai4Jian4VC: UIViewController {
    @IBOutlet weak var webViewBG: UIWebView!
    @IBOutlet var webViewBG2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var filePath = NSBundle.mainBundle().pathForResource("", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath!)
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        
        var filePath2 = NSBundle.mainBundle().pathForResource("", ofType: "gif")
        var gif2 = NSData(contentsOfFile: filePath2!)
        webViewBG2.loadData(gif2, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG2.userInteractionEnabled = false;
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