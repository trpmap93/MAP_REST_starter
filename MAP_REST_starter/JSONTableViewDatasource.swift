//
//  JSONTableViewDatasource.swift
//  MAP_REST_starter
//
//  Created by Mark Pruitt on 5/12/16.
//  Copyright © 2016 RAP. All rights reserved.
//

import Foundation
import UIKit

class JSONTableVIewDataSource:  NSObject, UITableViewDataSource {
    
    var jSONThings :[AnyObject]
    var cellIdentifier: String
    let header = "Names"
    
    init(jSONThings: [AnyObject]!, cellIdentifier: String!) {
        self.jSONThings = jSONThings
        self.cellIdentifier = cellIdentifier
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return jSONThings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        let item = jSONThings[indexPath.row]
        cell.textLabel?.text = (item as! String)
        return cell
    }
}