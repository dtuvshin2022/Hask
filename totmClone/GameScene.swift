//
//  GameScene.swift
//  totmClone
//
//  Created by David Tuvshin on 4/11/19.
//  Copyright © 2019 David Tuvshin. All rights reserved.
//

import SpriteKit
import GameplayKit
var lPoint: CGPoint?
var cPoint: CGPoint?
var swipeClass = UISwipeGestureRecognizer()

class GameScene: SKScene {
    var character = Character()
    var enemy = Spike()
    var wall = Wall()
    var wallArray = [Wall]()
    
    override func didMove(to view: SKView){
        self.addChild(character.spriteChar)
        self.addChild(enemy.spriteEnemy)
        self.addChild(wall.spriteWall)
        
        for _ in 1...10
        {
            
            
            
        }
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeHolder(sender:)))
        swipeRight.direction = .right

        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeHolder(sender:)))
        swipeLeft.direction = .left
        
        let swipeUp:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeHolder(sender:)))
        swipeUp.direction = .up
       
        let swipeDown:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeHolder(sender:)))
        swipeDown.direction = .down

        

        view.addGestureRecognizer(swipeUp)
        view.addGestureRecognizer(swipeDown)
        view.addGestureRecognizer(swipeLeft)
        view.addGestureRecognizer(swipeRight)
        //2


    }
    
    @objc func swipeHolder(sender: UISwipeGestureRecognizer)
    {
        
        if sender.state == .ended
        {
            
            switch sender.direction{
                
            case .right :
                
                print("r")
                xSpd = 100;
                ySpd = 0;
                character.phys.velocity = CGVector(dx: 0, dy: 0)
                character.phys.applyImpulse(CGVector(dx: xSpd, dy: ySpd))
                
            case .left :
                
                print("l")
                xSpd = -100;
                ySpd = 0;
                character.phys.velocity = CGVector(dx: 0, dy: 0)
                character.phys.applyImpulse(CGVector(dx: xSpd, dy: ySpd))
                
            case .up :
                
                print("u")
                xSpd = 0;
                ySpd = 100;
                character.phys.velocity = CGVector(dx: 0, dy: 0)
                character.phys.applyImpulse(CGVector(dx: xSpd, dy: ySpd))
                
            case .down :
                
                print("d")
                xSpd = 0;
                ySpd = -100
                character.phys.velocity = CGVector(dx: 0, dy: 0)
                character.phys.applyImpulse(CGVector(dx: xSpd, dy: ySpd))
                
            default: break
                
            }
            
            
        }
        
    }
    
    func touchDown(atPoint pos : CGPoint)
    {

    }
    
    func touchMoved(toPoint pos : CGPoint)
    {

    }
    
    func touchUp(atPoint pos : CGPoint)
    {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {

       
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches
        {
            self.touchMoved(toPoint: t.location(in: self))
            let touch = touches.first
            touch?.location(in: view)
            print(touch?.location(in: view) as Any)

            cPoint = (touch?.location(in: view))
            lPoint = cPoint
        }
//          xSpd += 1;

        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        // Called before each frame is rendered


    }
}
