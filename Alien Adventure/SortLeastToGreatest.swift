//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
 
        return inventory.sorted(by: ({
            if $0.rarity == $1.rarity{
                if $0.baseValue < $1.baseValue{
                    return true
                }else{
                    return false
                }
            }else if $0.rarity == .legendary && ($1.rarity == .rare || $1.rarity == .uncommon || $1.rarity == .common){
                return false
            }else if $0.rarity == .rare && ($1.rarity == .uncommon || $1.rarity == .common){
                return false
            }else if $0.rarity == .uncommon && $1.rarity == .common{
                return false
            }
            return true
        }))

    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
