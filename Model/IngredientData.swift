//
//  IngridientData.swift
//  XPack2
//
//  Created by Jazilul Athoya on 07/08/18.
//  Copyright © 2018 Jazilul Athoya. All rights reserved.
//

import Foundation

struct IngredientData {
    let data = [
        ["Brown Rice", "Romaine Lettuce", "Sweet Potato", "Whole-wheat Pasta", "Baby Spinach", "Quinoa"],
        ["Chicken Breast", "Dory", "Tilapia", "Tofu", "Rib Eye Steak", "Salmon"],
        ["Broccoli", "Butter Bean", "Button Mushrooms", "Carrots", "Cherry Tomatoes", "Egg Whites", "Kimchi", "Onsen Egg", "Pumpkin", "Spicy Edamame", "Sweet Corn", "Wakame", "Zucchini", "Avocado"],
        ["Almonds", "Furikake", "Garlic", "Mixed Seeds", "Raisins", "Tortilla"],
        ["Barbeque", "Green Curry", "Mint Yogurt", "Miso Mustard", "Pesto Vinaigrette", "Romesco", "Sesame Peanut", "Thai"]
    ]
    
    let additionalPrice: [String:Int] = ["Baby Spinach": 10, "Quinoa": 10, "Rib Eye Steak": 10, "Salmon": 20, "Avocado": 10]
    
    let additionalServing: [IngredientType:Int] = [.base: 10, .supplement: 10, .topping: 5, .dressing: 5]
    
    var bases: [String] {
        get {
            return data[0]
        }
    }
    
    var proteins: [String] {
        get {
            return data[1]
        }
    }
    
    var supplemets: [String] {
        get {
            return data[2]
        }
    }
    
    var toppings: [String] {
        get {
            return data[3]
        }
    }
    
    var dressings: [String] {
        get {
            return data[4]
        }
    }
    
    func getDisplayStringForIngredient(name: String) -> String {
        if let additionalPrice = IngredientData().additionalPrice[name] {
            return "\(name) (+\(additionalPrice)K)"
        } else {
            return name
        }
    }
    
}
