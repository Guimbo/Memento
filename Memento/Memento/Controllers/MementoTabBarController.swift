//
//  MementoTabBarController.swift
//  Memento
//
//  Created by Guimbo on 16/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class MementoTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let feedImage = FeedImagesViewController()
        feedImage.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let albunsCtrl = AlbunsViewController()
        albunsCtrl.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        let tabBarList = [feedImage, albunsCtrl]
        
        viewControllers = tabBarList

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
