//
//  Xing4VC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 6/21/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation

class Xing4VC: UIViewController {
    
    @IBOutlet weak var WebViewBG: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filePath2 = NSBundle.mainBundle().pathForResource("W6Order", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath2!)
        
        WebViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        WebViewBG.userInteractionEnabled = false;
        self.view.addSubview(WebViewBG)
        
    }
}