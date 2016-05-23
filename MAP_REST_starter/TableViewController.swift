//
//  TableViewController.swift
//  MAP_REST_starter
//
//  Created by RAP on 5/23/16.
//  Copyright © 2016 RAP. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class TableViewController: UITableViewController {
    
    var arrRes = [[String:AnyObject]]()
   // var testArray = ["Hattie", "Flower", "Molly", "Zoey"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let todoEndpoint: String = "http://api.androidhive.info/contacts/"
        Alamofire.request(.GET, todoEndpoint)
            .responseJSON { response in
                //handle JSON
                guard response.result.error == nil else {
                    print ("error calling GET")
                    print (response.result.error)
                    return
                }
                
                if let value = response.result.value {
                    //handle results as JSON without a ton of nested loops (todo is equal to swiftyJSONVar below in comments)
                    let todo = JSON(value)
                    
                    if let resData = todo["contacts"].arrayObject {
                        self.arrRes = resData as![[String:AnyObject]]
                    }
                    
                    if self.arrRes.count>0 {
                           self.tableView.reloadData()
                    }
                    
                    // now we have the results, let's print them through a table view would be better
                    //  print ("THe todo is: " + todo.description)
                    
                    // print ("The resData =" + self.arrRes.description)
                    
                    
                    for i in 0...(self.arrRes.count - 1) {
                        
                        
                        var dictPlace = self.arrRes[i]
                        print (dictPlace["name"] as! String)
                        print (dictPlace["email"] as! String)
                        
                        
                    }
                }
        }
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrRes.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 
        var dict = self.arrRes[indexPath.row]
        cell.textLabel?.text = dict["name"] as? String
        cell.detailTextLabel?.text = dict["email"] as? String
        
        return cell
        
 
        
        
        
     /*   override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.testArray.count
        }
        
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
            
            cell.textLabel!.text = testArray[indexPath.row]
    
            
            return cell  */
   
       
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}