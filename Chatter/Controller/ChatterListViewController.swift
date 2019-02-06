//
//  ViewController.swift
//  Chatter
//
//  Created by Sin Yee Lee on 31/1/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import UIKit


class ChatterListViewController: UITableViewController {
    
    let categories = ["Good for All", "Date", "Business", "Profiling", "Casual"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 100
    }
    
    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatterCategoryCell", for: indexPath)
        
        cell.textLabel?.text = categories[indexPath.row]
        
        return cell
}
    

    //MARK - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "goToQuestions", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! QuestionsViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedCategory = categories[indexPath.row]
        }
    }
}
