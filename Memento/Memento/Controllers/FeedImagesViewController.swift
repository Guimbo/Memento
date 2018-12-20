//
//  FeedImagesViewController.swift
//  Memento
//
//  Created by Guimbo on 13/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class FeedImagesViewController: UIViewController,
    UICollectionViewDelegate,
UICollectionViewDataSource, UIViewControllerPreviewingDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    var imageFromAPI: [UIImage] = APIController.shared.getRandomImages(num: 50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        let nibCell = UINib(nibName: "CellCollectionViewCell", bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: "cellCollection")
        
  //      CoreDataManager.shared.removeAllAlbuns()

//        let imageToTest = ImageStorie(description: "camera que ganhei do meu professor", image: UIImage(named: "camera.png")!)
//        let imageToTest1 = ImageStorie(description: "que ganhei do meu professor", image: UIImage(named: "camera.png")!)
//        let imageToTest2 = ImageStorie(description: "do meu professor", image: UIImage(named: "camera.png")!)
//        let imageToTest3 = ImageStorie(description: "meu professor", image: UIImage(named: "camera.png")!)
//        print("1")
//        print(imageToTest.story)
//        print("2")
//        print(imageToTest.date)
//
//        let arrayImage: [ImageStorie] = [imageToTest, imageToTest1, imageToTest2, imageToTest3]
//
//        let albumToTest = Album(title: "Coisas que ganhei", description: "Neste album estão as fotos de todos os presentes que ganhei esse ano", background: imageToTest.image, albumPictures: arrayImage)
//        print("3")
//        print(albumToTest.story)
//        print("4")
//        print(imageToTest.date)
//        CoreDataManager.shared.saveAlbum(albumToSave: albumToTest)
//        let secondAlbum = CoreDataManager.shared.fetchAlbumByName(nameAlbum:"Coisas que ganhei")
//        print("5")
//        print(secondAlbum.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageFromAPI.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollection", for: indexPath) as! CellCollectionViewCell
        cell.imageStoriePicture.image = imageFromAPI[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("cliquei man")
        
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        guard let indexPath = collectionView.indexPathForItem(at: collectionView.convert(location, from: view)), let cell = collectionView.cellForItem(at: indexPath) else{
            return nil
        }
        
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        <#code#>
    }
    
    

}
