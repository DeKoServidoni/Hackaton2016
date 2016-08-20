//
//  ListCell.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation
import UIKit

class ListCell: UICollectionViewCell {
    
    @IBOutlet weak var listName: UILabel!
    @IBOutlet weak var listSponsorIcon: UIImageView!
}

extension UILabel {
    func setTitle(text: String) {
        self.text = "#" + text
    }
}
