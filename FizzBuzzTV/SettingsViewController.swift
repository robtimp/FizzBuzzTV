//
//  SettingsViewController.swift
//  FizzBuzzTV
//
//  Created by Rob Hudson on 9/28/15.
//  Copyright © 2015 Rob Hudson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var selectedNumber: UISegmentedControl!
    @IBOutlet weak var fizzField: UITextField!
    @IBOutlet weak var buzzField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//         Get the new view controller using segue.destinationViewController.
//         Pass the selected object to the new view controller.
        if segue.identifier == "startSegue" {
            if let controller = segue.destinationViewController as? ViewController {
                if let title = selectedNumber.titleForSegmentAtIndex(selectedNumber.selectedSegmentIndex), number = Int(title) {
                    controller.maximumNumber = number
                }
                if let fizz = fizzField.text where !fizz.isEmpty {
                    controller.fizz = fizz
                }
                if let buzz = buzzField.text where !buzz.isEmpty {
                    controller.buzz = buzz
                }
            }
        }
    }

}
