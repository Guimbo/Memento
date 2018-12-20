//
//  APIController.swift
//  Memento
//
//  Created by Guimbo on 14/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation
import UIKit

class APIController {
    
    static let shared = APIController()
    
    private init() {}
    
    func getRandomImage() -> UIImage{
        let myGet = URL(string: "https://picsum.photos/200/300/?random")
        var image: UIImage?
        
        if let data = try? Data(contentsOf: myGet!){
            image = UIImage(data: data)!
            
        }
        return image!
    }
    
    func getRandomImages(num: Int) ->[UIImage]{
        var arrayImages:[UIImage] = []
        var control = num
        while control != 0 {
            arrayImages.append(getRandomImage())
            control = control - 1
            
        }
        return arrayImages
    }
    
    
}
