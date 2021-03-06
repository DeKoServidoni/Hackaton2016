//
//  ListViewController.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

final class ListViewController : UITableViewController {
    
    //MARK: Constants
    
    private let kReuseIdentifier = "CellIdentifier"

    //MARK: Variables
    
    private var lists = [List]()
    private var imgList = [String]()
        
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // loading the pre defined lists from pList file
        
        var preLists: NSArray?
        var preImg: NSArray?
        let path = NSBundle.mainBundle().pathForResource("lists", ofType: "plist")
        let imgPath = NSBundle.mainBundle().pathForResource("backgrouds", ofType: "plist")
        
        if path != nil && imgPath != nil {
            preLists = NSArray(contentsOfFile: path!)
            preImg = NSArray(contentsOfFile: imgPath!)
            
        }
        
        if preLists != nil {
            for item in preLists! {
                lists.append(List(title: item as! String,
                    sponsor: (item as! String == "Danone" || item as! String == "Olimpíadas Rio2016"),
                    products: getProductForItem(item as! String)))
            }
            
            for img in preImg! {
                imgList.append(img as! String)
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // hide the navigation bar in the main screen
        self.navigationController?.navigationBar.hidden = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
       
        if (segue.identifier == "goListDetailSegue") {
            let row = (sender as! NSIndexPath).row
            let list = lists[row] 
            
            let controller = segue.destinationViewController as! ListDetailViewController
            controller.list = list
            controller.imagePath = imgList[row]
        }
    }
    
    //MARK: Table view delegates
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(kReuseIdentifier, forIndexPath: indexPath) as! CustomCell
        
        cell.listName.setTitle(lists[indexPath.row].title)
        cell.sponsor.hidden = !lists[indexPath.row].sponsor
        cell.cellBackground.image = UIImage(named: imgList[indexPath.row])
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("goListDetailSegue", sender: indexPath);
    }
    
    //MARK: Private functions
    
    private func getProductForItem(item: String) -> [Product] {
        var products:[Product] = []
        
        switch item {
            
        case "Vai Monstro":
            products = ProductStore.getVaiMonstroProducts()
            break
            
        case "Festa no Apê":
            products = ProductStore.getFestaNoApProducts()
            break
            
        case "Danone":
            products = ProductStore.getDanoneProducts()
            break
            
        case "Morando Só":
            products = ProductStore.getMorandoSozinhoProducts()
            break
            
        case "Cura Ressaca":
            products = ProductStore.getCuraResacaProducts()
            break
            
        case "Olimpíadas Rio2016":
            products = ProductStore.getOlimpicaProducts()
            break
            
        case "Vegano":
            products = ProductStore.getVeganoProducts()
            break
            
        case "Romântica":
            products = ProductStore.getRomanticaProducts()
            break
            
        default:
            // do nothing
            break
        }
    
        return products
    }
}