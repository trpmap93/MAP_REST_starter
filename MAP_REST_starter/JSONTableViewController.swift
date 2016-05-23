//
//  JSONTableViewController.swift
//  MAP_REST_starter
//
//  Created by Mark Pruitt on 5/12/16.
//  Copyright © 2016 RAP. All rights reserved.
//

import UIKit

class JSONTableViewController: UITableViewController {
    
    let myDataSource = JSONTableVIewDataSource(jSONThings: ["this","is", "a", "spot", "for", "JSON"], cellIdentifier: "cell")
    let myDelegate = JSONTableViewDelegate()
    
    
    // need to add data gatherin from json here and set the result to an array and assign that array to a json thing
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = myDataSource
        self.tableView.delegate = myDelegate
        
        

     }
}