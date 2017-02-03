//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        
        let s1Length = s1.characters.count
        let s2Length = s2.characters.count
        let shuffleLength = shuffle.characters.count
        
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty{
            return true
        }else if shuffleLength < (s1Length + s2Length){
            return false
        }else{
            
            if shuffle.startIndex == s2.startIndex && shuffle.index(after: shuffle.startIndex) == s1.startIndex{
                return true
            }
        }
        return false
    }
}
