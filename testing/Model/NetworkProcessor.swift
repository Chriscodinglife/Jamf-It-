//
//  NetworkProcessor.swift
//  testing
//
//  Created by admin on 7/12/19.
//  Copyright © 2019 chrisOrellana. All rights reserved.
// ENTER YOUR JAMF USERNAME AND PASSWORD BELOW IN THE QUOTATION MARKS

import Foundation


class NetworkProcessor

{
    
    lazy var configuration: URLSessionConfiguration = URLSessionConfiguration.default
    lazy var session: URLSession = URLSession(configuration: self.configuration)
    
    let url: URL
    
    init(url: URL)
    {
        self.url = url
    }
    
    typealias JSONDictionaryHandler = (([String: Any]?) -> Void)
    
    func downloadJSONFromURL(_ completion: @escaping JSONDictionaryHandler)
    {
        let username = "ENTER JAMF USERNAME HERE"
        let password = "ENTER JAMF PASSWORD HERE"
        let loginString = String(format: "%@:%@", username, password)
        let loginData = loginString.data(using: .utf8)
        let encodedString = loginData!.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))
        var request = URLRequest(url: self.url)
        request.httpMethod = "Get"
        request.allHTTPHeaderFields = [
            "Accept": "application/json",
            "Authorization": "Basic \(encodedString)"
        ]
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            if error == nil {
                
                if let httpResponse = response as? HTTPURLResponse {
                    switch httpResponse.statusCode {
                    case 200:
                        // successful response
                        if let data = data {
                            do {
                                let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                                
                                completion(jsonDictionary as? [String : Any])
                                
                               //print(String(data: data, encoding: .utf8)!)
                            } catch let error as NSError {
                                print("Error processing json data: \(error.localizedDescription)")
                            }
                            
                        }
                    default:
                        print("HTTP Response Code: \(httpResponse.statusCode)")
                    }
                }
                
            } else {
                print("Error: \(error?.localizedDescription)")
            }
            
        }
        dataTask.resume()
    }
    
}
