//
//  wall.swift
//  totmClone
//
//  Created by David Tuvshin on 5/3/19.
//  Copyright © 2019 David Tuvshin. All rights reserved.
//

import Foundation
import SpriteKit


class Wall{
    
    var didCollide = false
    var spriteWall = SKSpriteNode(imageNamed: "theWall")
    var wallPhys : SKPhysicsBody
    var wallLocat = [Int]() 
    
    init () {
        
        wallPhys = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        
        wallPhys.affectedByGravity = false
        wallPhys.isDynamic = false
        
        spriteWall.size = CGSize(width: 50, height: 50)
        spriteWall.physicsBody = wallPhys
        spriteWall.position = CGPoint(x: 100, y: 500)
        
    }

    
}

