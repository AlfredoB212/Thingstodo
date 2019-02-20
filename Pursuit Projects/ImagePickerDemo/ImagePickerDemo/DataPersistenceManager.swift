//
//  DataPersistenceManager.swift
//  ImagePickerDemo
//
//  Created by Alfredo Barragan on 1/14/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
final class DataPersistenceManager {
     
    // path to documents directory
    static func documentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    // fireplath using filename to documents directory
    //"...Documents/PhotoJournalList.plist"
    static func filepathToDcoumentsDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }
}
