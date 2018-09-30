//
//  CustomMainCollectionViewCell.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 29.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit

class CustomMainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    func configureCell (with model: Icon) {
        icon.image = model.image
    }
}
