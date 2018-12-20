//
//  ScreenAlbumViewController.swift
//  Memento
//
//  Created by Guimbo on 19/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class ScreenAlbumViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    weak var delegate:AlbunsViewDelegate?
    var albumToShow:Album?

    @IBOutlet weak var collectionView: UICollectionView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        let nibCell = UINib(nibName: "CellCollectionViewCell", bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: "cellCollection")
        let nibHeader = UINib(nibName: "HeaderCollectionReusableView", bundle: nil)
        collectionView.register(nibHeader, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerCustom")

    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return(albumToShow?.albumPictures.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollection", for: indexPath) as! CellCollectionViewCell
        let imageStorie = albumToShow?.albumPictures[indexPath.row]
        cell.imageStoriePicture.image = imageStorie?.image
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerCustom", for: indexPath) as! HeaderCollectionReusableView
        headerView.imageBG.image = albumToShow?.background
        headerView.dateAlbum.text = albumToShow?.date
        headerView.storyAlbum.text = albumToShow?.story
        headerView.titleAlbum.text = albumToShow?.title
        return headerView
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

extension ScreenAlbumViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 360)
    }
}
