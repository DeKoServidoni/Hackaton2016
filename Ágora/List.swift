//
//  List.swift
//  Ágora
//
//  Created by Avenue Code on 8/20/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation

struct List {
    
    let title: String
    let sponsor: Bool
    var products: [Product]
    
    init(title newTitle:String, sponsor isSponsor: Bool, products newProducts:[Product]) {
        title = newTitle
        sponsor = isSponsor
        products = newProducts
    }
}