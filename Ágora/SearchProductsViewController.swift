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
    
    var list = ProductStore.getAllProducts()
    var selectedList: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.allowsMultipleSelection = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell")! as UITableViewCell
        cell.selectionStyle = .None
        let product = list[indexPath.row]
        cell.textLabel?.text = product.name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
        selectedList.append(list[indexPath.row])
        print(selectedList)
        searchBar.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        searchBar.resignFirstResponder()
        
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
        selectedList = selectedList.filter({ (Product) -> Bool in
            return Product.name != list[indexPath.row].name
        })
        print(selectedList)
        searchBar.resignFirstResponder()
    }
    
    func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        let searchText = self.searchBar.text! + text
        if (searchText.isEmpty) {
            list = ProductStore.getAllProducts()
        } else {
            list = ProductStore.getAllProducts().filter { (Product) -> Bool in
                return Product.name.containsString(searchText)
            }
        }
        
        self.myTableView.reloadData()
        return true
    }
    
}

