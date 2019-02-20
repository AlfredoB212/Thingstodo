//
//  PhotoJournalModel.swift
//  ImagePickerDemo
//
//  Created by Alfredo Barragan on 1/14/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
final class PhotoJournalModel {
    private static let filename = "photoJournalList.plist"
    // making the initializer private
    private init() {}
    
    static func savePhotoJournal(photoJournal: PhotoJournal) {
       let path = DataPersistenceManager.filepathToDcoumentsDirectory(filename: filename)
        do {
           let data = try PropertyListEncoder().encode(photoJournal)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error: \(error)")
        }
    }
    static func getPhotoJournal() -> PhotoJournal? {
        let path = DataPersistenceManager.filepathToDcoumentsDirectory(filename: filename).path
        var photoJournal: PhotoJournal?
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                     photoJournal = try PropertyListDecoder().decode(PhotoJournal.self, from: data)
                } catch {
                    print("property list decoding error: \(error)")
                }
            }
        } else {
            print("\(filename) does not exist")
        }
        return photoJournal
    }
    
}
