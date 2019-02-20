//
//  ItemModel.swift
//  ToDoList
//
//  Created by Alfredo Barragan on 1/11/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
final class ItemModel {
    private static  let filename = "ToDoList.plist"
    private static var items = [Item]()
    
    static func getItems() -> [Item] {
        let path = DataPersistenceManager.filepathToDocumentDirectory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                    items = try PropertyListDecoder().decode([Item].self, from: data)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("data is nil")
            }
        } else {
            print("\(filename) does not exist")
        }
        
        
        return items
    }
    static func addItem(item: Item) {
        items.append(item)
        save()
    }

    static func save() {
        let path = DataPersistenceManager.filepathToDocumentDirectory(filename: filename)
        do {
           let data = try PropertyListEncoder().encode(items)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property lsit encoding error: \(error)")
        }
    }
}
