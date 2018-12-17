//
//  Album.swift
//  Memento
//
//  Created by Guimbo on 16/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation
import UIKit

class Album{
    var title:String = ""
    var description:String = ""
    private var date: String = ""
    
    var background:UIImage = UIImage(named: "camera.png")!
    var albumPictures:[ImageStorie] = []
    
    
    var formatter = DateFormatter()
    
    init(title: String, description: String, background: UIImage, albumPictures: [ImageStorie]) {
        self.title = title
        self.description = description
        self.background = background
        self.albumPictures = albumPictures
        
        let dateSystem = Date()
        formatter.dateFormat = "dd-mm-yyyy"
        self.date = formatter.string(from: dateSystem)
    }
    
    init(title: String, description:String) {
        self.title = title
        self.description = description
        
        let dateSystem = Date()
        formatter.dateFormat = "dd-mm-yyyy"
        self.date = formatter.string(from: dateSystem)
    }
    
    func changeAlbumTitle(newTitle: String){
        self.title = newTitle
        
    }
    func changeAlbumDescription(newDescription: String){
        self.title = newDescription
        
    }
    func changeAlbumBackground(newImage: UIImage){
        self.background = newImage
        
    }
    func changeDate(newDate: Date){
        formatter.dateFormat = "dd-mm-yyyy"
        self.date = formatter.string(from: newDate)
    }
    
    func deleteAllImageStories(){
        albumPictures = []
        
    }
    func deleteImageStorieById(imageToRemove: ImageStorie){
        albumPictures = albumPictures.filter({$0.image != imageToRemove.image})
    }
    
    func addImageStorie(imageStorie: ImageStorie){
        albumPictures.append(imageStorie)
    }
    
    func addArrayOfImagesStories(arrayOfImagesStories: [ImageStorie]){
        albumPictures.append(contentsOf: arrayOfImagesStories)
    }
    
    
    
 
}
