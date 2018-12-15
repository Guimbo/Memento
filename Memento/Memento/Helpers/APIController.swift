//
//  APIController.swift
//  Memento
//
//  Created by Guimbo on 14/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import Foundation

class APIController {
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    
    func getAllImages(){
        let url = URLComponents(string: "https://picsum.photos/list")
        print(url as Any)
    }
    
}
