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
                let sponsor = (item as! String == "Danone" || item as! String == "Olimpíadas Rio2016")
                lists.append(List(title: item as! String, sponsor: sponsor))
            }
            
            for img in preImg! {
                imgList.append(img as! String)
            }
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
        //TODO: Implement action functionalities
    }
}