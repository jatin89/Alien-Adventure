//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var itemRarityCount = [UDItemRarity:Int]()
        
        itemRarityCount = [.common:0, .legendary:0, .rare:0, .uncommon:0]
        for item in inventory{
            if item.rarity == .common{
                itemRarityCount[.common]! += 1
            }
            if item.rarity == .legendary{
                itemRarityCount[.legendary]! += 1
            }
            if item.rarity == .rare{
                itemRarityCount[.rare]! += 1
            }
            if item.rarity == .uncommon{
                itemRarityCount[.uncommon]! += 1
            }
            
        }
        return itemRarityCount
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
