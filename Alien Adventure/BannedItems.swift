//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let dataArray = NSArray(contentsOf: dataFileURL) as! [[String: Any]]
        var itemsThatAreBanned = [Int]()
        
        for item in dataArray{
            
            if let itemsName = item["Name"] as? String{
                //print(itemsName)
                if itemsName.contains("Laser")   {
                    
                    let itemsHistoricalData = item["HistoricalData"] as! [String : AnyObject]
                        //print (itemsHistoricalData)
                    if let carbonAge = itemsHistoricalData["CarbonAge"] as? Int{
                        
                        if carbonAge <= 30{
                            itemsThatAreBanned.append(item["ItemID"] as! Int)
                        }
                        
                    }
                    
                    
                }
                
            }
        }
        
        return itemsThatAreBanned//[Int]()
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
