//
//  ItemViewController.swift
//  MyTableView
//
//  Created by macos on 7/13/21.
//

import UIKit

class ItemViewController: UIViewController {

    var sendItem:Item?
    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        itemName.text = sendItem?.name
        itemDescription.text = sendItem?.desc
        itemPrice.text = String((sendItem?.price)!)
        itemImage.image = UIImage(named: (sendItem?.imageFile)!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

   
    

    
}
