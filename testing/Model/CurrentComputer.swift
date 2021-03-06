//
//  CurrentComputer.swift
//  testing
//
//  Created by admin on 7/13/19.
//  Copyright © 2019 chrisOrellana. All rights reserved.
//

import Foundation

class CurrentComputer
{
    
    let name: String?
    let ip_address: String?
    let serial_number: String?
    let mac_address: String?
    
    struct ComputerKeys {
        
        static let name = "name"
        static let ip_address = "last_reported_ip"
        static let serial_number = "serial_number"
        static let mac_address = "mac_address"
        
    }
    
    init(computerDictionary: [String : Any])
    {
        name = computerDictionary[ComputerKeys.name] as? String
        ip_address = computerDictionary[ComputerKeys.ip_address] as? String
        serial_number = computerDictionary[ComputerKeys.serial_number] as? String
        mac_address = computerDictionary[ComputerKeys.mac_address] as? String
        
        
    }
    
    
    
}











