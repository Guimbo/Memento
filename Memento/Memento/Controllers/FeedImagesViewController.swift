//
//  FeedImagesViewController.swift
//  Memento
//
//  Created by Guimbo on 13/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class FeedImagesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func actionButton(_ sender: Any) {
        let albunsCtrl = AlbunsViewController()
        present(albunsCtrl, animated: true)
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
