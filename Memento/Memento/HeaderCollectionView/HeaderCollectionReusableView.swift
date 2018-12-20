//
//  HeaderCollectionReusableView.swift
//  Memento
//
//  Created by Guimbo on 20/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    @IBOutlet weak var imageBG: UIImageView!
    @IBOutlet weak var titleAlbum: UILabel!
    @IBOutlet weak var dateAlbum: UILabel!
    @IBOutlet weak var storyAlbum: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
