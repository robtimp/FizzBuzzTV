//
//  ViewController.swift
//  FizzBuzzTV
//
//  Created by Rob Hudson on 9/28/15.
//  Copyright © 2015 Rob Hudson. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var maximumNumber = 25
    var fizz = "Fizz"
    var buzz = "Buzz"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return maximumNumber
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let number = indexPath.row + 1
        var text = ""
        
        if number % 3 == 0 && number % 5 == 0 {
            text = "\(fizz)\(buzz)"
        } else if number % 3 == 0 {
            text = "\(fizz)"
        } else if number % 5 == 0 {
            text = "\(buzz)"
        } else {
            text = "\(number)"
        }
        cell.textLabel?.text = text
        
        return cell
    }
}

