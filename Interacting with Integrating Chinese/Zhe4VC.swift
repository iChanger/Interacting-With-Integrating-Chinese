//
//  Zhe4VC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/18/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class Zhe4VC: UIViewController {
    
    
    @IBOutlet weak var webViewBG: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filePath2 = NSBundle.mainBundle().pathForResource("W30Order", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath2!)
        
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        self.view.addSubview(webViewBG)
        
    }
    
    // Do any additional setup after loading the view.
}
