//
//  ViewController.swift
//  Challenge:NavigationCuk
//
//  Created by Hubert Wang on 14/08/18.
//  Copyright © 2018 Hubert Wang. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var customerName = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var orderType: UISegmentedControl!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func navigateToSecondViewController(_ sender: Any) {
        if customerName == "" {
            let alert = UIAlertController(title: "No Name Inputted", message: "Please input your name", preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
            alert.addAction(okayAction)
            present(alert, animated: true, completion: nil)
        }
        else{
            let secondVC = SecondViewController()
            secondVC.name = customerName
            navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    
    @IBAction func hideKeyboardForName(_ sender: Any) {
        nameTextField.resignFirstResponder()
    }
    
    
    @IBAction func hideKeyboardForEmail(_ sender: Any) {
        emailTextField.resignFirstResponder()
    }
    
    
    @IBAction func nameInputted(_ sender: Any) {
        if let tmp = nameTextField.text{
            customerName = tmp
        }
    }
    
}
