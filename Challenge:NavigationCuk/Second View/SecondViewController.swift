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
    var dataFoodList = [String]()
    let listOfFoods = IngredientData()
    
    
    @IBOutlet weak var nameLabelOutput: UILabel!
    @IBOutlet weak var foodTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name)
        
        nameLabelOutput.text = "Hi, \(name)"
        nameLabelOutput.alpha = 1
        print(nameLabelOutput.frame)
        
        foodTableView.register(UINib(nibName: "FoodTableViewCell", bundle: nil), forCellReuseIdentifier: "foodCell")
        
        for tmp in listOfFoods.data{
            for tmp2 in tmp{
                dataFoodList.append(tmp2)
            }
        }
    }
}

extension SecondViewController: UITableViewDelegate{
    
}

extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFoodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
//        myCell.accessoryType = .detailButton
//        myCell.nameLabel.text = "\(dataFoodList[indexPath.row])"
//        myCell.imageFood.image =
        myCell.nameLabel.text = "\(dataFoodList[indexPath.row])"
        myCell.imageFood.image = UIImage(named: "\(dataFoodList[indexPath.row])")
        return myCell
    }
    
    //Navigate to ViewController() from the very top
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if (indexPath.row == 0){
//            navigationController?.pushViewController(ViewController(), animated: true)
//        }
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
}
