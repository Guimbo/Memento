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
        let myGet = URL(string: "https://picsum.photos/200/300?image=01062")
        var image: UIImage?
        
        if let data = try? Data(contentsOf: myGet!){
            image = UIImage(data: data)!
            
        }
        return image!
    }
        
        //let getTask = URLSession.shared.dataTask(with: myGet!, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
        //print(getTask)
    
}
