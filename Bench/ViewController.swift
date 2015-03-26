//
//  ViewController.swift
//  Bench
//
//  Created by Giovanni Lodi on 27/03/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sayHelloButton: UIButton!
    @IBOutlet weak var showStuffButton: UIButton!
    @IBOutlet weak var footerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColors()
        sayHelloButton.addTarget(self, action: "sayHello", forControlEvents:
        UIControlEvents.TouchUpInside)
    }
    
    func setColors() {
        titleLabel.textColor = UIColor(red:0.51, green:0.51, blue:0.51, alpha:1)
        sayHelloButton.setTitleColor(UIColor(red:0.15, green:0.68, blue:0.38, alpha:1), forState: .Normal)
        showStuffButton.setTitleColor(UIColor(red:0.15, green:0.68, blue:0.38, alpha:1), forState: .Normal)
        footerLabel.textColor = UIColor(red:0.66, green:0.66, blue:0.73, alpha:1)
    }

    func sayHello() {
        let alertController = UIAlertController(title: "Hello", message: "Sup?", preferredStyle: .Alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .Default, handler: nil)
        alertController.addAction(dismissAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
}

