//
//  GameScene.swift
//  Programattic Node Layouts
//
//  Created by Andrew Lundy on 5/2/20.
//  Copyright © 2020 Andrew Lundy. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    // MARK: - Properties
    var themesTitle: SKSpriteNode!
    var themeBluesButton: SKSpriteNode!
    var themeElementsButton: SKSpriteNode!
    var themeGreensButton: SKSpriteNode!
    var themeIceCreamButton: SKSpriteNode!
    var themeMetalsButton: SKSpriteNode!
    var themeOrangesButton: SKSpriteNode!
    var themeOuterSpace: SKSpriteNode!
    var optionsTitle: SKSpriteNode!
    var audioTitle: SKSpriteNode!
    var audioOnButton: SKSpriteNode!
    var audioOffButton: SKSpriteNode!
    var modesTitle: SKSpriteNode!
    var modeReverseGravityButton: SKSpriteNode!
    var modeSpeedButton: SKSpriteNode!
    
    var buttonSize: CGSize!
    var titleSize: CGSize!
    var margin: CGFloat!

    
    
    // MARK: - Inits
    override func didMove(to view: SKView) {
        createMenu()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    
    // MARK: - Methods
    func createMenu() {
        margin = 175
        
        titleSize = CGSize(width: 275, height: 200)
        buttonSize = CGSize(width: 275, height: 170)
        
        optionsTitle = SKSpriteNode(imageNamed: "Menu_OPTIONS")
        audioTitle = SKSpriteNode(imageNamed: "Menu_AUDIO")
        audioOffButton = SKSpriteNode(imageNamed: "Menu_OFF")
        audioOnButton = SKSpriteNode(imageNamed: "Menu_ON")
        modesTitle = SKSpriteNode(imageNamed: "Menu_MODES")
        modeReverseGravityButton = SKSpriteNode(imageNamed: "Menu_REVERSE_GRAVITY")
        modeSpeedButton = SKSpriteNode(imageNamed: "Menu_SPEED")
        themesTitle = SKSpriteNode(imageNamed: "Menu_THEMES")
        
        
        // Create nodes for menu
        optionsTitle.position = CGPoint(x: frame.midX, y: frame.maxY - 125)
        addChild(optionsTitle)
        
        audioTitle.size = titleSize
        audioTitle.position = CGPoint(x: margin, y: optionsTitle.position.y - 200)
        addChild(audioTitle)

        audioOnButton.size = buttonSize
        audioOnButton.position = CGPoint(x: frame.maxX - (margin + 100), y: audioTitle.position.y)
        addChild(audioOnButton)
        
        audioOffButton.size = buttonSize
        audioOffButton.position = CGPoint(x: audioOnButton.position.x + 120, y: audioOnButton.position.y)
        addChild(audioOffButton)

        modesTitle.size = titleSize
        modesTitle.position = CGPoint(x: margin + 5, y: audioTitle.position.y - 140)
        addChild(modesTitle)

        modeReverseGravityButton.size = buttonSize
        modeReverseGravityButton.position = CGPoint(x:  frame.maxX - (margin + 45), y: modesTitle.position.y)
        addChild(modeReverseGravityButton)

        modeSpeedButton.size = buttonSize
        modeSpeedButton.position = CGPoint(x: frame.maxX - (margin - 10), y: modeReverseGravityButton.position.y - 60)
        addChild(modeSpeedButton)

        themesTitle.size = titleSize
        themesTitle.position = CGPoint(x: margin + 15, y: modeSpeedButton.position.y - 75)
        addChild(themesTitle)

        
        
        // Code for Blog Starts Here
        let themeNames = ["Blues", "Reds", "Greens", "Oranges", "Purples",
                          "Pinks", "Elements", "Metals", "OuterSpace", "IceCream"]
        
        for i in 0...3 {
            addChild(addThemeImage(at: CGPoint(x: 150 + (i * 150), y: Int(themesTitle.position.y) - 100), themeName: "Theme_\(themeNames[i])"))
        }
        
        for i in 4...6 {
            addChild(addThemeImage(at: CGPoint(x: -375 + (i * 150), y: Int(themesTitle.position.y) - 200), themeName: "Theme_\(themeNames[i])"))
        }
        

    }
    
    // Function for Blog
    func addThemeImage(at position: CGPoint, themeName: String) -> SKSpriteNode {
        var themeNameSprite: SKSpriteNode!
        themeNameSprite = SKSpriteNode(imageNamed: themeName)
        themeNameSprite.position = position
        themeNameSprite.size = buttonSize
        themeNameSprite.name = themeName
        
        return themeNameSprite
    }

    
}
