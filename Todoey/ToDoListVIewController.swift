//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let listOfTasks = ["Play Guitar", "Do Exercise", "Read Book", "Chill out"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

//MARK: - TableView Datasource methods

extension ToDoListViewController{
    
    //Number of rows in table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfTasks.count
    }
    
    //Add content
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = listOfTasks[indexPath.row]
        
        return cell
    }
    
    //No need to add conformance to Protocol or assign delegate, already handled by superclass
}

