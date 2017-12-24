//
//  TableViewController.swift
//  RemoveBottomLine
//
//  Created by Anhdzai on 12/21/17.
//  Copyright © 2017 Anhdzai. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var array = [Int](0...10)
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.tableFooterView = UIView(frame: .zero)
//        tableView.separatorStyle = .none
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "index", for: indexPath)
        cell.textLabel?.text = String(array[indexPath.row])
        return cell
    }
    
}
