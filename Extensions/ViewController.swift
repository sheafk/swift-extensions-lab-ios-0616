//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fullname = "Mickey Mouse"
        let phoneNumber = 8675309
        
        print(fullname.calculatePoints())
        print(phoneNumber)
        print(fullname.pigLatin)
        print(fullname.unicornLevel)
        
        unicornLevelLabel.text = fullname.unicornLevel
    }
}


