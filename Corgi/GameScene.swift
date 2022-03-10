//
//  GameScene.swift
//  Corgi
//
//  Created by Tamás Nieszner on 2021. 06. 26..
//

import SpriteKit

class GameScene: SKScene {
    let corgiSpriteNode = SKSpriteNode(imageNamed: "Run0")
    var corgiFrames = [SKTexture]()
    
    override func didMove(to view: SKView) {
        corgiSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(corgiSpriteNode)
        
        let textureAtlas = SKTextureAtlas(named: "corgiFrames")
        for index in 0..<textureAtlas.textureNames.count {
            let textureName = "Run"+"\(index)"
            corgiFrames.append(textureAtlas.textureNamed(textureName))
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if corgiSpriteNode.hasActions() {
            corgiSpriteNode.removeAllActions()
        } else {
            corgiSpriteNode.run(SKAction.repeatForever(SKAction.animate(with: corgiFrames, timePerFrame: 0.1)))
        }
    }
}
