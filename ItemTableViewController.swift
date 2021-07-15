//
//  ItemTableViewController.swift
//  MyTableView
//
//  Created by macos on 7/13/21.
//

import UIKit

class ItemTableViewController: UITableViewController {

    var items:[Item] = [
        Item(name: "Apple", desc: "Red Apple", price: 18.50, imageFile: "apple"),
        Item(name: "Orange", desc: "Sweet Orange", price: 19.00, imageFile: "orange"),
        Item(name: "Mango", desc: "Yellow Sweet Mango", price: 25.00, imageFile: "mango"),
        Item(name: "Banana", desc: "Banana from Davao", price: 7.75, imageFile: "banana"),
        Item(name: "Guava", desc: "Big Guava", price: 20.00, imageFile: "guava"),
        Item(name: "Strawberry", desc: "1 pack sweet strawberry", price: 35.00, imageFile: "strawberry")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "itemID")

    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemID", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = String(items[indexPath.row].price)
        cell.imageView?.image = UIImage(named: items[indexPath.row].imageFile)
                
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "itemDetails", sender: tableView)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ItemViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let item = items[indexPath.row]
            vc.sendItem = item
        }
    }
}
