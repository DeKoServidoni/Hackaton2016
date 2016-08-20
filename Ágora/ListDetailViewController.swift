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
    var isFromUser: Bool = false;
    
    @IBOutlet weak var listImage: UIImageView!
    @IBOutlet weak var listTable: UITableView!
    @IBOutlet weak var navBarItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = list?.title
        
        if isFromUser {
            listImage.removeFromSuperview()
            navBarItem.title = "Salvar"
            
        } else {
            listImage.image = UIImage(named: imagePath!)
            navBarItem.title = "Usar"
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // hide the navigation bar in the main screen
        self.navigationController?.navigationBar.hidden = false
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "goListCreateSegue") {
            let name = (sender as! String)
            
            let newList = List(title: name, sponsor: false, products: self.list!.products)
            
            let controller = segue.destinationViewController as! ListCreateViewController
            controller.list = newList
        }
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
    
    //MARK: Actions
    
    @IBAction func navBarActionClick(sender: AnyObject) {
        
        if(isFromUser) {
            //TODO
            
        } else {
            showInputDialog() { newName in
                self.performSegueWithIdentifier("goListCreateSegue", sender: newName);
            }
        }
    }
    
    //MARK: Private functions
    
    private func showInputDialog(clickHandler: (newName: String?) -> Void) {
        let alert = UIAlertController(title: "Nova lista", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.Default) { action in
            alert.dismissViewControllerAnimated(true, completion: nil)
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { action in
            clickHandler(newName: alert.textFields![0].text)
            })
        
        alert.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            textField.placeholder = "Nome"
        })
        
        presentViewController(alert, animated: true, completion: nil)
    }
}
