//
//  ListCreateViewController.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

protocol DownloadManagerProtocol {
    func updateProgress(progress: Float)
    func downloadDoneWith(status: Bool!, andError: NSError?)
}

class ListCreateViewController: UITableViewController, SearchDelegate {
    
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
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let action = UITableViewRowAction(style: .Default, title: "Remover") { (action, indexPath) in
            self.list!.products.removeAtIndex(indexPath.row)
            
            tableView.reloadData()
        }
        return [action]
    }
    
    //MARK: Action handlers
    
    @IBAction func addItemAction(sender: AnyObject) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Searchboard", bundle: nil)
        let searchController = storyBoard.instantiateViewControllerWithIdentifier("searchId") as! SearchProductViewController
        searchController.delegate = self
        self.presentViewController(searchController, animated: true, completion: nil)
    }
    
    //MARK: Search delegate
    
    func itemsSelected(products: [Product]) {
        for item in products {
            list?.products.append(item)
            self.tableView.reloadData()
            
            ProductStore.setPersonalList(list!.title, products: list!.products)
        }
    }
}