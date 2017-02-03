//
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    var badgeImg : String
    var skT : SKTexture
    
    //skT = badgeImg
    
    init(requestType: UDRequestType) {
        self.requestType = requestType
//        print (self.requestType.rawValue)
        self.badgeImg = "BadgeMagenta"
        self.skT = SKTexture(imageNamed: self.badgeImg )
        super.init(texture: self.skT, color: UIColor.clear, size: CGSize(width: 48, height: 48))
    }
    
//    init(requestType: UDRequestType, badge: String) {
//        self.requestType  = requestType
//        self.badgeImg = badge
//        self.skT = SKTexture(imageNamed: self.badgeImg )
//        super.init(texture: self.skT, color: UIColor.clear, size: CGSize(width: 48, height: 48))
//    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
