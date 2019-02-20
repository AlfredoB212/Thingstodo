//
//  TicketModel.swift
//  Tickets
//
//  Created by Alfredo Barragan on 1/30/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
struct EventData: Codable {
    struct Embedded: Codable {
        let events: [Event]
    }
    let _embedded: Embedded?
}

struct Event: Codable {
    let name: String
    let type: String
    let id: String
    let url: URL
    struct ImageInfo: Codable {
        let ratio: String
        let url: URL
        let width: Int
        let height: Int
    }
    let images: [ImageInfo]
    struct DateInfo: Codable {
        struct Start: Codable {
            let localDate: String
            let localTime: String
            let dateTime: String
        }
        let start: Start?
    }
    let dates: DateInfo?
}
