//
//  ViewController.swift
//  MeetUpEvents
//
//  Created by Alfredo Barragan on 12/12/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class MeetupEventsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MeetupAPIClient.searchEvents(keyword: "ios")
        
        MeetupAPIClient.memberEvents()
    }


}

