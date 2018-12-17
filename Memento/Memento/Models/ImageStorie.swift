//
//  ImageStorie.swift
//  Memento
//
//  Created by Guimbo on 16/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation
import UIKit

class ImageStorie{
    
    var description:String = "Sem descrição"
    private var date: String
    var image:UIImage
    
    var formatter = DateFormatter()

    
    init(description: String, image: UIImage, idImage: Int) {
        self.description = description
        self.image = image
        
        let dateSystem = Date()
        formatter.dateFormat = "dd-mm-yyyy"
        self.date = formatter.string(from: dateSystem)

    }
    
    func changeDescription(newDescription: String){self.description = newDescription}
    
    func changeDate(newDate: Date){
        formatter.dateFormat = "dd-mm-yyyy"
        self.date = formatter.string(from: newDate)

    }
    
    
}
