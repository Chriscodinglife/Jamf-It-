//
//  ComputerService.swift
//  testing
//
//  Created by admin on 7/13/19.
//  Copyright © 2019 chrisOrellana. All rights reserved.
//  ENTER YOUR JAMF URL/INSTANCE BELOW BETWEEN THE <>

import Foundation

class ComputerService
{
// /computers/id
    let computerhtml: String
    let ComputerBaseURL: URL?
    
    init(computerhtml: String)
    {
        self.computerhtml = computerhtml
        ComputerBaseURL = URL(string: "https://<ENTER JAMF URL HERE>/JSSResource/\(computerhtml)")
    }
    
   
    func getComputer(id: Int, completion: @escaping (CurrentComputer?) -> Void)
    {
        if let computerURL = URL(string: "\(ComputerBaseURL!)/\(id)") {
            
            let networkProcessor = NetworkProcessor(url: computerURL)
            networkProcessor.downloadJSONFromURL({ (jsonDictionary) in
                // TODO parse json dictionary into a swift computer object
                
                if let currentComputerDictionary = jsonDictionary?[keyPath: "computer.general"] as? [String: Any] {
                    
                    let currentComputer = CurrentComputer(computerDictionary: currentComputerDictionary)
                    completion(currentComputer)
                } else {
                    completion(nil)
                }
            })
        }
    }
    
}












