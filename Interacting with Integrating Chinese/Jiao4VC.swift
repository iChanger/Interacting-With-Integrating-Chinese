//
//  Jiao4VC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/9/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation
import UIKit

class Jiao4VC: UIViewController {
    
    @IBOutlet weak var webViewBG: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var filePath = NSBundle.mainBundle().pathForResource("W10Order", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath!)
        
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        self.view.addSubview(webViewBG)
        // Do any additional setup after loading the view.
    }
    
}
