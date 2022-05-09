//
//  SaveHelper.swift
//  Just-Keep-Typing
//
//  Created by Jackson on 5/8/22.
//

// code reference: https://stackoverflow.com/questions/24097826/read-and-write-a-string-from-text-file

import Foundation

class SaveHelper {
    
    func save(fileName: String, text: String)
    {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let fileURL = dir.appendingPathComponent(fileName)
            print(fileURL)

            //writing
            do {
                try text.write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {/* error handling here */
                print("problem with saving file")
            }

        }

        
    }
    
    
    
}
