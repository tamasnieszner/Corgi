//
//  GameViewController.swift
//  Corgi
//
//  Created by Tamás Nieszner on 2021. 06. 26..
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            let scene = GameScene(size: view.bounds.size)
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
                
            // Present the scene
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
