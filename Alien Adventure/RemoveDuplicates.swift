//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {        
        
        var encountered = Set<UDItem>()
        var result = [UDItem]()

        for value in inventory{
            if encountered.contains(value){
                // do nothing otherwise ur adding duplicates
            }else{
                encountered.insert(value)
                result.append(value)
            }
        }

        return result
    }
    
}
