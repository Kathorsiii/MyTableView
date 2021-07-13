//
//  Item.swift
//  MyTableView
//
//  Created by macos on 7/13/21.
//

import UIKit

class Item: NSObject {
    var name: String
    var desc: String
    var price: Double
    var imageFile: String
    
    init(name: String, desc: String, price: Double, imageFile: String) {
        self.name = name
        self.desc = desc
        self.price = price
        self.imageFile = imageFile
    }
}
