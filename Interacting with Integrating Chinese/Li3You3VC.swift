//
//  Li3You3VC.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 7/10/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//

import Foundation
import UIKit

class Li3You3VC: UIViewController {
    
    @IBOutlet weak var webViewBG: UIWebView!
    @IBOutlet weak var webViewBG2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var filePath = NSBundle.mainBundle().pathForResource("W14OrderP2", ofType: "gif")
        var gif = NSData(contentsOfFile: filePath!)
        webViewBG.loadData(gif, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG.userInteractionEnabled = false;
        
        var filePath2 = NSBundle.mainBundle().pathForResource("W14OrderP1", ofType: "gif")
        var gif2 = NSData(contentsOfFile: filePath2!)
        webViewBG2.loadData(gif2, MIMEType: "image/gif", textEncodingName: nil, baseURL: nil)
        webViewBG2.userInteractionEnabled = false;
        // Do any additional setup after loading the view.
    }
    
}
