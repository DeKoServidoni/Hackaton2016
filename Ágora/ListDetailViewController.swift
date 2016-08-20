//
//  ListDetailViewController.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

class ListDetailViewController: UIViewController {
    
    var list: List?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // show the navigation bar in the main screen
        self.navigationController?.navigationBar.hidden = false
    }
}
