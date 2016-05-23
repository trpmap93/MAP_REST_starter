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
    var arrRes = [[String:AnyObject]]()

    override func viewDidLoad() {
        super.viewDidLoad()

}
        // Do any additional setup after loading the view, typically from a nib.
        
    /*    let todoEndpoint: String = "http://api.androidhive.info/contacts/"
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
                        //tableview reload
                    }
                    
                    // now we have the results, let's print them through a table view would be better
                 //  print ("THe todo is: " + todo.description)
                
                   // print ("The resData =" + self.arrRes.description)
                
                    
                   for i in 0...(self.arrRes.count - 1) {
                    
                    
                    var dict = self.arrRes[i]
                    print (dict["name"] as! String)
                    print (dict["email"] as! String)
                        
                    }
                
            }
            
            }
         
        
            .responseString { response in
            // print response as a string for debug, test, etc
               // print (response.result.value)
               // print (response.result.error)
                
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

*/
}
