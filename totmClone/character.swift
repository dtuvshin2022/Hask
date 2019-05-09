//
//  character.swift
//  totmClone
//
//  Created by David Tuvshin on 4/11/19.
//  Copyright © 2019 David Tuvshin. All rights reserved.
//

import Foundation
import SpriteKit
var xSpd = 0;
var ySpd = 0;
var swipeCase = 0;
class Character{
    var spriteChar = SKSpriteNode(imageNamed: "characterSprite")
    var phys : SKPhysicsBody
    
    init () {

            phys = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
            phys.affectedByGravity = false
            phys.angularDamping = -10000
            phys.linearDamping = 10
            spriteChar.size = CGSize(width: 50, height: 50)
            spriteChar.physicsBody = phys
        
//        spriteChar.position = CGPoint(x: 100, y: 500)
        
    }
    
    func movement()
    {

        

    }
 
        

}
