//
//  MeetupAPIClient.swift
//  MeetUpEvents
//
//  Created by Alfredo Barragan on 12/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import Foundation

final class MeetupAPIClient {
    
    static func searchEvents(keyword: String) {
        let urlString = "https://api.meetup.com/find/events?key=\(SecretKeys.APIKey)&fields=group_photo&text=\(keyword)"
        guard let url = URL(string: urlString) else {
            print("badURL: \(urlString)")
            return
        }
    
        URLSession.shared.dataTask(with: url) { ( data, response, error) in
            if let response = response as? HTTPURLResponse {
                print("response status code is \(response.statusCode)")
            }
            
            
            
            if let error = error {
                print("error: \(error)")
                
            } else if let data = data {
                do {
                    let events = try JSONDecoder().decode([Event].self, from: data)
                    print("found \(events.count) events")
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    // events you have RSVP'd to, valid values are "yes" or "No"
    static func memberEvents() {
        let urlString = "https://api.meetup.com/self/events?key=\(SecretKeys.APIKey)&page=10&status=upcoming&desc=false&rsvp=yes"
        NetworkHelper.performDataTask(urlString: urlString, httpMethod: "GET")  { (error, data) in
            if let error = error {
                print("error: \(error)")
            } else if let data = data {
                do {
                    let events = try JSONDecoder().decode([Event].self, from: data)
                    print("rsvp\'d to \(events.count) events")
                } catch {
                    print("decoding error: \(error)")
                }
            }
        }
    }

    static func updateRSVP() {
        let urlString = "https://api.meetup.com/2/rsvp?key=b7878223454b624a11562f3b643c7b&event_id=256944810&rsvp=yes"
    }




}
