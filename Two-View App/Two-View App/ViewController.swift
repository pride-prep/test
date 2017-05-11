//
//  ViewController.swift
//  Two-View App
//
//  Created by Tommy Glasser on 5/10/17.
//  Copyright © 2017 Tommy Glasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1Label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerB = segue.destination as? ViewController2 {
            // list all variables from your second view controller
            viewControllerB.stringPassed = textField.text!
        }
    }


}

