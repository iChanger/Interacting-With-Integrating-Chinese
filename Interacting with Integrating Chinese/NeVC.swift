//
//  NeVC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/3/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class NeVC: UIViewController {
    
    @IBOutlet weak var webViewBG: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var filePath = NSBundle.mainBundle().pathForResource("W8Order", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath!)
        
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        self.view.addSubview(webViewBG)
        // Do any additional setup after loading the view.
    }
    
}
