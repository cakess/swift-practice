//
//  apples.swift
//  Swift Practice
//
//  Created by UCode on 11/18/17.
//  Copyright © 2017 Jacob. All rights reserved.
//

import Foundation

func applesProgram() {
    
    print("How much fruit do you have?")
    
    let fruit = readLine()
    
    print("How many vegatables do you have?")
    
    let vegetables = readLine()
    
    if let unwrappedFruit = fruit,
       let unwrappedVegetables = vegetables
    {
        print("I have \(unwrappedFruit) fruit and \(unwrappedVegetables) vegetable(s)")
        
    }
    else
    {
        print("I dont know where my fruit and vegetables went")
    }
}

