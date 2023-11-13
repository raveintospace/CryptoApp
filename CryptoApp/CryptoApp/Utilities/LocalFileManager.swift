//
//  LocalFileManager.swift
//  CryptoApp
//  Lesson 9 - https://youtu.be/Z9yWdChUDlo?si=o9ayQV5XDjdhw7d9 // minut 15
//  Created by Uri on 13/11/23.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init() { }  // private so instance can only be initialized from class LocalFileManager
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        guard
            let data = image.pngData(),
            let url = getURLForImage(imageName: imageName, folderName: folderName)
            else { return }    // we have to save data to fileManager
        
        do {
            try data.write(to: url)
        } catch let error {
            debugPrint("Error saving image. \(error)")
        }
    }
    
    // the folder where we store our images
    private func getURLForFolder(folderName: String) -> URL? {
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(folderName)
    }
    
    // the url where we store each image in our folder
    private func getURLForImage(imageName: String, folderName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: folderName) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
}
