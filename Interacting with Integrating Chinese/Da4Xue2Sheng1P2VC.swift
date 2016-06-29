//
//  Da4Xue2Sheng1P2VC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/30/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class Da4Xue2Sheng1P2VC: UIViewController {
    
    @IBOutlet weak var webViewBG: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var filePath2 = NSBundle.mainBundle().pathForResource("W10Order", ofType: "gif")
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