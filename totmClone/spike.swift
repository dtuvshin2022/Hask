//
//  spike.swift
//  totmClone
//
//  Created by David Tuvshin on 4/25/19.
//  Copyright © 2019 David Tuvshin. All rights reserved.
//

import Foundation
import SpriteKit

class Spike{
   // location[Double] = {1 , 1}
    var spriteEnemy = SKSpriteNode(imageNamed: "Spike")
    var phys : SKPhysicsBody
    init () {
        
        spriteEnemy.size = CGSize(width: 50, height: 50)
        phys = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        phys.affectedByGravity = false
//        phys.angularDamping = 0
//        phys.linearDamping = 0
        spriteEnemy.size = CGSize(width: 50, height: 50)
        spriteEnemy.physicsBody = phys
        //        spriteChar.position = CGPoint(x: 100, y: 500)
        
    }
    
}
