//
//  ViewController.swift
//  Bench
//
//  Created by Giovanni Lodi on 27/03/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sayHelloButton: UIButton!
    @IBOutlet weak var showStuffButton: UIButton!
    @IBOutlet weak var footerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColors()
        sayHelloButton.addTarget(self, action: "sayHello", forControlEvents:
        UIControlEvents.TouchUpInside)
        sayHelloButton.accessibilityIdentifier = "the button"
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        let seconds: Double = 10
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) { () -> Void in
            self.sayHelloButton.setTitle("Ciao", forState: UIControlState.Normal)
        }
    }
    
    func setColors() {
        sayHelloButton.setTitleColor(Colors.green(), forState: .Normal)
        showStuffButton.setTitleColor(Colors.green(), forState: .Normal)
        footerLabel.textColor = UIColor(red:0.66, green:0.66, blue:0.73, alpha:1)
    }

    func sayHello() {
        let alertController = UIAlertController(title: "Hello", message: "Sup?", preferredStyle: .Alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .Default, handler: nil)
        alertController.addAction(dismissAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
}

