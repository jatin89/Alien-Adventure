//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let planetJSON = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawPlanetJSON = try! Data(contentsOf: planetJSON)
        
        var planetDictionariesFromJSON : [[String:Any]]!
        do{
            planetDictionariesFromJSON = try! JSONSerialization.jsonObject(with: rawPlanetJSON, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
        }
        
        var max : Int = 0
        var returnPlaner = String()
        var temp = ""
        
        for planet in planetDictionariesFromJSON{
            
            var common:Int = 0
            var uncommon:Int = 0
            var rare:Int = 0
            var legendary:Int = 0
            var total: Int = 0
            
            if let commonItem = planet["CommonItemsDetected"] as? Int{
                common = commonItem * 1
            }
            if let uncommonItem = planet["UncommonItemsDetected"] as? Int{
                uncommon = uncommonItem * 2
            }
            if let rareItem = planet["RareItemsDetected"] as? Int{
                rare = rareItem * 3
            }
            if let legendaryItem = planet["LegendaryItemsDetected"] as? Int{
                legendary = legendaryItem * 4
            }
            if let name = planet["Name"] as? String{
                temp = name
            }

            total = common + uncommon + rare + legendary
            
            if total >= max{
                max = total
                returnPlaner = temp
            }
        }
 
        return returnPlaner
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
