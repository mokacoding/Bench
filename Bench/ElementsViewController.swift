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
    
    let cellIdentifier = "Cell"
    let elementFomatter = ElementFormatter()
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = elementFomatter.formattedElementString(elements[indexPath.row] as [NSObject: AnyObject])
        return cell
    }
    
    // MARK - Elements
    
    let elements: [NSDictionary] = {
        var error: NSError?
        let JSONFilePath = NSBundle.mainBundle().pathForResource("periodic_table", ofType: "json")
        let JSONData = NSData(contentsOfFile: JSONFilePath!)
        do {
            let d = try NSJSONSerialization.JSONObjectWithData(JSONData!, options: NSJSONReadingOptions.AllowFragments) as! [NSDictionary]
            return d
        } catch {
            return []
        }
    }()
}
