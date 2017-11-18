//
//  vector.swift
//  Swift Practice
//
//  Created by UCode on 11/18/17.
//  Copyright © 2017 Jacob. All rights reserved.
//

import Foundation

func vectorProgram() {
    
    let a: (Int,Int,Int) = (1,2,3)
    let b: (Int,Int,Int) = (4,5,6)
    
    let (ax,ay,az) = a
//    print(ax,ay,az)

    let (bx,by,bz) = b
//    print(bx,by,bz)
    
    
    
    let c: (Int,Int,Int) = (ax + bx, ay + by, az + bz)
    let k: Int = 17
    let d: (Int,Int,Int) = (c.0 * k, c.1 * k, c.2 * k)
    
    print(d)
    
    print(a)
    print(b)
    print(c)
    
    
}