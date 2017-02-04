//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        
        var udErrorCount = [UDPolicingError: Int]()
        
        udErrorCount[UDPolicingError.itemFromCunia] = 0
        udErrorCount[UDPolicingError.nameContainsLaser] = 0
        udErrorCount[UDPolicingError.valueLessThan10] = 0
        
        
        if inventory.isEmpty {
            return udErrorCount
        }
        
        for item in inventory{
            do{
                try policingFilter(item)
            }catch UDPolicingError.nameContainsLaser{
                //print ("catching laser error")
                if let count = udErrorCount[UDPolicingError.nameContainsLaser] {
                    udErrorCount.updateValue(count+1, forKey: UDPolicingError.nameContainsLaser)
                } else {
                    udErrorCount.updateValue(1, forKey: UDPolicingError.nameContainsLaser)
                }
            }catch UDPolicingError.itemFromCunia{
                //print ("catching cunia error")
                if let count = udErrorCount[UDPolicingError.itemFromCunia] {
                    udErrorCount[UDPolicingError.itemFromCunia] = count + 1
                } else {
                    udErrorCount[UDPolicingError.itemFromCunia] = 1
                }
            }catch UDPolicingError.valueLessThan10{
               // print ("catching less than 10")
                if let count = udErrorCount[UDPolicingError.valueLessThan10] {
                    udErrorCount.updateValue(count+1, forKey: UDPolicingError.valueLessThan10)
                } else {
                    udErrorCount.updateValue(1, forKey: UDPolicingError.valueLessThan10)
                }
            }catch{
                //print("something else has happen")
            }
        }
        
        return udErrorCount
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
