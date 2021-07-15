//
//  ItemViewController.swift
//  MyTableView
//
//  Created by macos on 7/13/21.
//

import UIKit

class ItemViewController: UIViewController {

    var sendItem: Item?
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemName.text = sendItem?.name
        itemDescription.text = sendItem?.desc
        itemPrice.text = String((sendItem?.price)!)
        itemImage.image = UIImage(named: (sendItem?.imageFile)!)
    }
}
