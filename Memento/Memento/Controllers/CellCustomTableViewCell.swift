//
//  CellCustomTableViewCell.swift
//  Memento
//
//  Created by Guimbo on 19/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class CellCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var albumBG: UIImageView!
    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var albumDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
