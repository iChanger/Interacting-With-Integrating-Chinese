//
//  Home.swift
//  Interacting with Integrating Chinese
//
//  Created by Ian Chang on 5/17/15.
//  Copyright (c) 2015 Ian Chang. All rights reserved.
//
import UIKit
import Foundation

class Home : UIViewController {
    @IBOutlet weak var backgroundView: UIImageView!

    override func viewDidLoad(){
    backgroundView.image = UIImage(named: "New Home with Design")
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer());
}
}