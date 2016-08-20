//
//  ListCreateViewController.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

class ListCreateViewController: UITableViewController {
    
    var list: List?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = list?.title
    }
    
    //MARK: Table delegate
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list!.products.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("productItemId", forIndexPath: indexPath)
        
        cell.textLabel?.text = list!.products[indexPath.row].name
        cell.detailTextLabel?.text = String(format: "%d calorias", list!.products[indexPath.row].calories)
        
        return cell
    }

}