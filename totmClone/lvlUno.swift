//
//  lvlUno.swift
//  totmClone
//
//  Created by David Tuvshin on 5/9/19.
//  Copyright © 2019 David Tuvshin. All rights reserved.
//

import Foundation
import SpriteKit

class lvlUno
{
    var lvlUnoWal = [Wall]()
    init () {
        
        var newWall = Wall()
        newWall.spriteWall.position = CGPoint(x: 100, y: 100)
        lvlUnoWal.append(newWall)
        
    }
    
    
}
