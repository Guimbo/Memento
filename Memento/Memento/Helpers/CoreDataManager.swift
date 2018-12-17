
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
    lazy var context = appDelagate.persistentContainer.viewContext
    
    func saveAlbum(albumToSave: Album, key: String){
        
        let entity = NSEntityDescription.entity(forEntityName: "Albuns", in: context)
        let newAlbum = NSManagedObject(entity: entity!, insertInto: context)
        
        newAlbum.setValue(albumToSave, forKey: key)
        do{
            try context.save()
            print("Ferias is coming")
        } catch {
            print("deu bode")
        }
    }
    
    func fetchAllAlbuns() ->[Album]{
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "albuns")
        var albunsBank: [Album] = []
        
        request.returnsObjectsAsFaults = false
        
        do{
            let result = try context.fetch(request)
            albunsBank = result as! [Album]
            
        } catch {
            print("Deu bode")
        }
        return albunsBank
    }
    
    func fetchAlbumByName(nameAlbum: String) ->Album{
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "albuns")
        var albumGeted: Album?
        
        request.returnsObjectsAsFaults = false
        
        do{
            let result = try context.fetch(request)
            for data in result{
                if((data as! Album).title == nameAlbum){
                    albumGeted = data as? Album
                }
            }
        } catch {
            print("Deu bode")
        }
        return albumGeted!
        
    }
}
