//
//  MyListsViewController.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

class MyListsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataArray: [String:[Product]] = [:]
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var messageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        // hide the navigation bar in the main screen
        self.navigationController?.navigationBar.hidden = false
        
        dataArray = ProductStore.getAllPersonalLists()!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: DataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }

        let keys = Array(dataArray.keys)
        
        cell?.textLabel?.text = keys[indexPath.row]
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let keys = Array(dataArray.keys)
        self.performSegueWithIdentifier("goListDetailSegue2", sender: keys[indexPath.row]);
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "goListDetailSegue2") {
            let name = (sender as! String)
            
            let newList = List(title: name, sponsor: false, products: dataArray[name]!)
            
            let controller = segue.destinationViewController as! ListDetailViewController
            controller.isFromUser = true
            controller.list = newList
        }
    }
}
