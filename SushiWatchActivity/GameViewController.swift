//
//  GameViewController.swift
//  GameProject
//
//  Created by Sruthi on 2019-10-30.
//  Copyright © 2019 Ankita. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import WatchConnectivity

class GameViewController: UIViewController{
    override func viewDidLoad() {
    super.viewDidLoad()
    
    let scene = GameScene(size:self.view.bounds.size)
    let skView = self.view as! SKView
    skView.showsFPS = true
    skView.showsNodeCount = true
    skView.ignoresSiblingOrder = true
    scene.scaleMode = .aspectFill
    
    // property to show hitboxes
    skView.showsPhysics = true
    
    skView.presentScene(scene)
}
}
