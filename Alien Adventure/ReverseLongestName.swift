//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var names = [String]()
     
        for item in inventory{
            names.append(item.name)
        }
        
        if let max = names.max(by: {$1.characters.count > $0.characters.count}) {
            let rev: String
            rev = String(max.characters.reversed())
            
            return rev
        }
        
        return ""
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
