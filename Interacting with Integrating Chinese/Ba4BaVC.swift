//
//  Ba4BaVC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/18/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import UIKit

class Ba4BaVC: UIViewController {
    
    
    @IBOutlet weak var webViewBG2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filePath2 = NSBundle.mainBundle().pathForResource("W31Order", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath2!)
        
        webViewBG2.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG2.userInteractionEnabled = false;
        self.view.addSubview(webViewBG2)
        
    }
    
    // Do any additional setup after loading the view.
}
