//
//  DataPersistenceManager.swift
//  ToDoList
//
//  Created by Alfredo Barragan on 1/11/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
final class DataPersistenceManager {
    static func documentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }

    static func filepathToDocumentDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }


}
