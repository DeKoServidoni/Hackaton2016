//
//  ListViewController.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

class ListViewController : UICollectionViewController {
    
    //MARK: Constants
    
    private let kReuseIdentifier = "CollectionItem"

    //MARK: Variables
    
    private var lists = [List]()
        
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // loading the pre defined lists from pList file
        
        var preLists: NSArray?
        let path = NSBundle.mainBundle().pathForResource("lists", ofType: "plist")
        
        if path != nil {
            preLists = NSArray(contentsOfFile: path!)
        }
        
        if preLists != nil {
            for item in preLists! {
                let sponsor = (item as! String == "Danone" || item as! String == "Olímpica Rio2016")
                lists.append(List(title: item as! String, sponsor: sponsor))
            }
        }
    }
    
    //MARK: Collection delegates
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lists.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kReuseIdentifier, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.blueColor()
        return cell
    }
}