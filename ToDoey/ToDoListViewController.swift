//
//  ToDoListViewController.swift
//  ToDoey
//
//  Created by Bradley A Beaubien on 8/10/18.
//  Copyright © 2018 Bradley A Beaubien. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Get Ready", "Get Set", "Go Crazy"]
    
//    let itemArray = ["Get Ready", "Get Set", "Go Crazy", "1Get Ready", "1Get Set", "1Go Crazy", "2Get Ready", "2Get Set", "2Go Crazy", "3Get Ready", "3Get Set", "3Go Crazy", "4Get Ready", "4Get Set", "4Go Crazy","zGet Ready", "zGet Set", "zGo Crazy", "z1Get Ready", "z1Get Set", "z1Go Crazy", "z2Get Ready", "z2Get Set", "z2Go Crazy", "z3Get Ready", "z3Get Set", "z3Go Crazy", "z4Get Ready", "z4Get Set", "z4Go Crazy"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK - TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}

