//
//  ViewController.swift
//  MAP_REST_starter
//
//  Created by RAP on 5/5/16.
//  Copyright © 2016 RAP. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let todoEndpoint: String = "http://jsonplaceholder.typicode.com/todos/1"
        Alamofire.request(.GET, todoEndpoint)
            .responseJSON { response in
                //handle JSON
                guard response.result.error == nil else {
                    print ("error calling GET on /todos/1")
                    print (response.result.error)
                    return
                }
                
                if let value = response.result.value {
                    //handle results as JSON without a ton of nested loops
                    let todo = JSON(value)
                    
                    // now we have the results, let's print them through a table view would be better
                    print ("THe todo is: " + todo.description)
                    if let title = todo["title"].string {
                        // to access a field
                        print("The title is: " + title)
                        }
                    else {
                        print ("error parsing /todos/1")
                        
                    }
                }
            }
        
            .responseString { response in
            // print response as a string for debug, test, etc
                print (response.result.value)
                print (response.result.error)
                
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

