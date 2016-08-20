//
//  Product.swift
//  Ágora
//
//  Created by Clerton Leal on 20/08/16.
//  Copyright © 2016 Avenue Code. All rights reserved.
//

import Foundation

struct Product {
    
    let name: String
    let calories: Int
    var type: String?
    
    init(name newName: String, calories newCalories: Int, type newType: String) {
        name = newName
        calories = newCalories
        type = newType
    }
    
    init(name newName: String, calories newCalories: Int) {
        name = newName
        calories = newCalories
    }
}