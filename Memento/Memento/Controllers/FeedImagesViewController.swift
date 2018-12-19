//
//  FeedImagesViewController.swift
//  Memento
//
//  Created by Guimbo on 13/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class FeedImagesViewController: UIViewController {

    @IBOutlet weak var imageTest: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CoreDataManager.shared.removeAllAlbuns()

        let imageToTest = ImageStorie(description: "camera que ganhei do meu professor", image: UIImage(named: "camera.png")!)
        print("1")
        print(imageToTest.story)
        print("2")
        print(imageToTest.date)

        let arrayImage: [ImageStorie] = [imageToTest]

        let albumToTest = Album(title: "Coisas que ganhei", description: "Neste album estão as fotos de todos os presentes que ganhei esse ano", background: imageToTest.image, albumPictures: arrayImage)
        print("3")
        print(albumToTest.story)
        print("4")
        print(imageToTest.date)
        CoreDataManager.shared.saveAlbum(albumToSave: albumToTest)
        let secondAlbum = CoreDataManager.shared.fetchAlbumByName(nameAlbum:"Coisas que ganhei")
        print("5")
        print(secondAlbum.title)
    }


    @IBAction func actionButton(_ sender: Any) {
        
        print("apaguei")
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
