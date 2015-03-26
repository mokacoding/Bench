//
//  ElementsViewController.swift
//  Bench
//
//  Created by Giovanni Lodi on 27/03/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

import UIKit

class ElementsViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let data = [ "Elements", "will", "be", "shown", "here" ]
    let cellIdentifier = "Cell"
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .Plain, target: self, action: "dismiss")
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    // MARK: - Dismiss
    
    func dismiss() {
       self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
