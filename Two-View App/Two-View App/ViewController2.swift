//
//  ViewController2.swift
//  Two-View App
//
//  Created by Tommy Glasser on 5/11/17.
//  Copyright © 2017 Tommy Glasser. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var view2Label: UILabel!
    var stringPassed = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view2Label.text = stringPassed;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
