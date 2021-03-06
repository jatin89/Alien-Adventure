//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var count : Int = 0
        
        for request in requestTypes{
            for bdg in badges{
                if bdg.requestType == request{
                    count += 1
                    break
                }
            }
        }
        return count == requestTypes.count
        
    }
    
}
