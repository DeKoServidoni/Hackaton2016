//
//  ListDetailViewController.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

class ListDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list: List?
    var imagePath: String?
    
    @IBOutlet weak var listImage: UIImageView!
    @IBOutlet weak var listTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = list?.title
        
        listImage.image = UIImage(named: imagePath!)
//        listImage.removeFromSuperview()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // hide the navigation bar in the main screen
        self.navigationController?.navigationBar.hidden = false
    }
    
    //MARK: Table delegate

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list!.products.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("productItemId", forIndexPath: indexPath)
        
        cell.textLabel?.text = list!.products[indexPath.row].name
        cell.detailTextLabel?.text = String(format: "%d calorias", list!.products[indexPath.row].calories)
        
        return cell
    }
}
