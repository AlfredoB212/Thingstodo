//
//  NetworkHelper.swift
//  MeetUpEvents
//
//  Created by Alfredo Barragan on 12/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation
final class NetworkHelper {
    static func performDataTask(urlString: String, httpMethod: String, completionHandler: @escaping (Error?, Data?)-> Void) {
        guard let url = URL(string: urlString) else {
            print("badURL: \(urlString)")
            return
        
        }
        // so far we've been using uRL to make network request
        // now we will use uRLRequest to make network requests
        // URLRequest gives us the ablity to package more metadata into our network request e.g httpMethod type
        
        // metadata: extra information about an object
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completionHandler(error, nil)
            }
            
            if let response = response as? HTTPURLResponse {
                print("response status code is \(response.statusCode)")
            }
            
            if let data = data {
                completionHandler(nil, data)
            }
            
        }.resume()
    
    
    }
    
    
}
