//
//  ScreenAlbumViewController.swift
//  Memento
//
//  Created by Guimbo on 19/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class ScreenAlbumViewController: UIViewController {

    weak var delegate:AlbunsViewDelegate?
    var albumToShow:Album?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(albumToShow?.title as Any)

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
