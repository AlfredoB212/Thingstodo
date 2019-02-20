//
//  DataPersistenceManager.swift
//  FileManager
//
//  Created by Alfredo Barragan on 1/11/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
// helper class for accessing the file system

final class DataPersistenceManager {
    static func documentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }

    static func filepathToDocumentsDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }


}
