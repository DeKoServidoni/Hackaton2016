//
//  SearchProductsViewController.swift
//  Ágora
//
//  Created by Clerton Leal on 20/08/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import UIKit

class SearchProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet var myTableView: UITableView!
    
    var initialList = ProductStore.getAllProducts()
    var list = ProductStore.getAllProducts()
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.allowsMultipleSelection = true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell")! as UITableViewCell
        let product = list[indexPath.row]
        
        if (product.checked) {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        cell.selectionStyle = .None
        cell.textLabel?.text = product.name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
        var product = list[indexPath.row]
        product.checked = true
        
        initialList = initialList.map { (Product) -> Product in
            if (product.name == Product.name) {
                return product;
            }
            return Product
        }
        
        searchBar.resignFirstResponder()
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
        var product = list[indexPath.row]
        product.checked = false
        
        initialList = initialList.map { (Product) -> Product in
            if (product.name == Product.name) {
                return product;
            }
            return Product
        }
        
        searchBar.resignFirstResponder()
    }
    
    func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        let searchText = self.searchBar.text! + text
        if (searchText.isEmpty) {
            list = initialList
        } else {
            list = initialList.filter { (Product) -> Bool in
                return Product.name.containsString(searchText)
            }
        }
        
        self.myTableView.reloadData()
        return true
    }
    
}

