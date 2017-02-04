//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
//    if lhs.rarity == rhs.rarity {
//        if lhs.baseValue < rhs.baseValue {
//            return true
//        }
//    }else if lhs.rarity == .legendary && (rhs.rarity == .rare || rhs.rarity == .uncommon || rhs.rarity == .common){
//        return false
//    }
//    return true
    
    
    if lhs.rarity == rhs.rarity{
        if lhs.baseValue < rhs.baseValue{
            return true
        }else{
            return false
        }
    }else if lhs.rarity == .legendary && (rhs.rarity == .rare || rhs.rarity == .uncommon || rhs.rarity == .common){
        return false
    }else if lhs.rarity == .rare && (rhs.rarity == .uncommon || rhs.rarity == .common){
        return false
    }else if lhs.rarity == .uncommon && rhs.rarity == .common{
        return false
    }
    return true
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
