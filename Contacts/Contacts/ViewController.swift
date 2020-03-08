//
//  ViewController.swift
//  Contacts
//
//  Created by Jamario Davis on 4/29/19.
//  Copyright © 2019 KAYCAM. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let cellId = "cellId123123"
    let names = [
    "Amy", "Jim", "Zack", "Jill", "Don"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        //navigationItem.rightBarButtonItem =
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let name = self.names[indexPath.row]
        cell.textLabel?.text = name
        cell.textLabel?.text = "\(name) Section:\(indexPath.section) Row:\(indexPath.row)"
        return cell
    }

}
























































































































































































































