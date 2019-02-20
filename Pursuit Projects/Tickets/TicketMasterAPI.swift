//
//  TicketMasterAPI.swift
//  Tickets
//
//  Created by Alfredo Barragan on 1/30/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
final class TicketmasterAPIClient {
    static func searchEvents(keyword: String, isZipCode: Bool, completion: @escaping (Error?, [Event]?)-> Void) {
        var endpointURLString = ""
        if isZipCode {
            endpointURLString = "https://app.ticketmaster.com/discovery/v2/events.json?apikey=\(SecretKeys.ticketAPIKey)&postalCode=\(keyword)&radius=200&unit=miles"
            endpointURLString = "https://app.ticketmaster.com/discovery/v2/events.json?apikey=\(SecretKeys.ticketAPIKey)&city=\(keyword)&radius=200&unit=miles"
        }
        guard let url = URL(string: endpointURLString) else {
            print("bad url string: \(endpointURLString)")
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("error: \(error)")
            } else if let data = data {
                // create model
                do {
                    let eventData = try JSONDecoder().decode(EventData.self, from: data)
                    let events = eventData._embedded?.events
                    completion(nil, events)
                } catch {
                    print("Json decoding error: \(error)")
                }
            }
        }
        task.resume()
    }
}
