//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var charArray = [Character:Int]()
        if inventory.isEmpty{
            return nil
        }
        for item in inventory {
            
            for char in item.name.lowercased().characters {
               // print (char)
                if let value = charArray[char] {
                    let newCount = value + 1
                   // print("the character count for \(char) is \(newCount)")
                    charArray[char] = newCount
                } else {
                    charArray[char] = 1
                }
            }
        }
        
        var highestCount: Int = 0
        var mostOccuringChar: Character = "a"
        for (char, count) in charArray {
           // print("charArray:\(char, count)")
            if count > highestCount {
                highestCount = count
                mostOccuringChar = char
               // print("the most occuring char is \(mostOccuringChar) with \(highestCount)")            
            }
        }
        //print (mostOccuringChar)
        return mostOccuringChar
    }
}
