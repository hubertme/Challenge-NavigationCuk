//
//  SecondViewController.swift
//  Challenge:NavigationCuk
//
//  Created by Hubert Wang on 14/08/18.
//  Copyright © 2018 Hubert Wang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name = ""
    
    @IBOutlet weak var nameLabelOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabelOutput.text = "Hi, \(name)"
        
    }
    
    
}
