//
//  ViewController.swift
//  PracticeFileManager
//
//  Created by Alfredo Barragan on 1/11/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

struct Potato: Codable {
    let name: String
    let cohort: Double
}


class ViewController: UIViewController {
    private let filename = "FellowList.plist"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(DataPersistenceManager.documentsDirectory())
        
        // WRITING TO THE DOCUMENTS DIRECTORY!!!
        
        // create instances of Fellow
        
        
        
        //        let raymond = Fellow(name: "Raymond", cohort: 5.3)
        //        let andreas = Fellow(name: "Andreas", cohort: 5.1)
        //
        //        // store these fellows in an array
        //        let fellows = [raymond, andreas]
        //
        //        // convert the fellows array to Data using PropertyListEncoder()
        //        do {
        //            let data = try PropertyListEncoder().encode(fellows)
        //            let url = DataPersistenceManager.filepathToDocumentsDirectory(filename: filename)
        //
        //        // write the array of fellows to documents directory
        //          try data.write(to: url, options: Data.WritingOptions.atomic)
        //        } catch {
        //            print("property list encoding error: \(error)")
        //        }
        //    }
        //
        //
        //}
        // WRITING TO THE DOCUMENTS DIRECTORY!!!
        
        // Get path - use .path on URL to get path as a String
        let path = DataPersistenceManager.filepathToDocumentsDirectory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            // we are getting data from the path
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    let fellows = try PropertyListDecoder().decode([Fellow].self, from: data)
                    print("there are \(fellows.count) fellows")
                }  catch {
                    print("property list encoding error: \(error)")
                }
            } else {
                print("no data at path")
            }
        }
    }
}



