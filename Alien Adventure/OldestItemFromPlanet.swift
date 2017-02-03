//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var returnItem : UDItem? = nil
        var temp : Int = 0
        
        for item in inventory{
            //print (item.historicalData)
            if let planetG = item.historicalData["PlanetOfOrigin"] as? String {
                if planetG == planet{
                    if let carbonAge = item.historicalData["CarbonAge"] as? Int{
                        if carbonAge > temp{
                            temp = carbonAge
                            returnItem = item
                        }
                        //returnItem.append(item)
                    }
                }
            }
        }
        return returnItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
