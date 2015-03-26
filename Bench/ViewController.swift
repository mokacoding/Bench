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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.textColor = UIColor(red:0.51, green:0.51, blue:0.51, alpha:1)
        sayHelloButton.titleLabel?.textColor = UIColor(red:0.15, green:0.68, blue:0.38, alpha:1)
        showStuffButton.titleLabel?.textColor = UIColor(red:0.15, green:0.68, blue:0.38, alpha:1)
    }

}

