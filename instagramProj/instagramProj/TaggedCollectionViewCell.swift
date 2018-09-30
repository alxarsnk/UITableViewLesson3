//
//  TaggedCollectionViewCell.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 29.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit

class TaggedCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var taggedPjoto: UIImageView!
    func configureCell (with model: Icon) {
        taggedPjoto.image = model.image
    }
}
