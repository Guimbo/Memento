
//
//  CoreDataManager.swift
//  Memento
//
//  Created by Guimbo on 17/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager{
    
    static let shared = CoreDataManager()
    
    let appDelagate = UIApplication.shared.delegate as! AppDelegate
    
    
    private init() {}
    
    func saveAlbum(albumToSave: Album){
        
        let context = appDelagate.persistentContainer.viewContext
        let album = AlbumMemento(context: context)
        let imageFormated = albumToSave.background!.pngData()
        
        album.story = albumToSave.story
        album.title = albumToSave.title
        album.date = albumToSave.date
        album.background = imageFormated
        
        for picture in albumToSave.albumPictures{
            let pictureToSave = ImageStoriesMemento(context: context)
            let pictureFormated = picture.image.pngData()
            pictureToSave.story = picture.story
            pictureToSave.date = picture.date
            pictureToSave.image = pictureFormated
            album.addToImageStoriesMemento(pictureToSave)
        }
        do{
            try context.save()
            print("deu bom")
        } catch {
            print("deu bode")
        }

    }
    

    func fetchAlbumByName(nameAlbum: String) ->Album{
        
        let context = appDelagate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "AlbumMemento")
        let albumGeted :Album = Album(title: "sem título", description: "Sem descrição")
        request.returnsObjectsAsFaults = false
        do{
            let result = try context.fetch(request)
            for data in result{
                if((data as! AlbumMemento).title == nameAlbum){
                    albumGeted.story = (data as! AlbumMemento).story!
                    albumGeted.title = (data as! AlbumMemento).title!
                    albumGeted.background = UIImage(data:(data as! AlbumMemento).background!)
                    
                    let imagesInBank = (data as! AlbumMemento).imageStoriesMemento?.allObjects
                    for imageGeted in imagesInBank!{
                        let tempImage = ImageStorie(description:(imageGeted as! ImageStoriesMemento).story!, image: UIImage(data: (imageGeted as! ImageStoriesMemento).image!)!)
                        albumGeted.addImageStorie(imageStorie: tempImage)
                    }
                }
            }
        } catch {
            print("Deu bode")
        }
        return albumGeted
    }
    
    func fetchAllAlbuns() ->[Album]{
        let context = appDelagate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "AlbumMemento")
        var allAlbuns: [Album] = []
        
        let albumGeted :Album = Album(title: "sem título", description: "Sem descrição")
        request.returnsObjectsAsFaults = false
        do{
            let result = try context.fetch(request)
            for data in result{
                albumGeted.story = (data as! AlbumMemento).story!
                albumGeted.title = (data as! AlbumMemento).title!
                albumGeted.background = UIImage(data:(data as! AlbumMemento).background!)
                
                let imagesINBank = ((data as! AlbumMemento).albumPictures! as! [ImageStoriesMemento])
                for imageGeted in imagesINBank{
                    let tempImage = ImageStorie(description:imageGeted.story!, image: UIImage(data: imageGeted.image!)!)
                    albumGeted.addImageStorie(imageStorie: tempImage)
                }
                allAlbuns.append(albumGeted)
            }
        } catch {
            print("Deu bode")
        }
        return allAlbuns
    }
}
