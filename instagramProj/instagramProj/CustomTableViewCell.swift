//
//  CustomTableViewCell.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 27.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

   
    @IBOutlet weak var likelabel: UILabel!
    @IBOutlet weak var archiveimg: UIImageView!
    @IBOutlet weak var directimg: UIImageView!
    @IBOutlet weak var commentimg: UIImageView!
    @IBOutlet weak var likeimg: UIImageView!
    @IBOutlet weak var mainPhotoUIImage: UIImageView!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var avatarUIImage: UIImageView!
    
    func configureCell(with model: Photo){
        avatarUIImage.image = model.avatar
        nicknameLabel.text = model.nickname
        mainPhotoUIImage.image = model.mainphoto
        likeimg.image = model.like
        commentimg.image = model.comment
        directimg.image = model.direct
        archiveimg.image = model.archive
        likelabel.text = model.likesLabel
        avatarUIImage.layer.cornerRadius = avatarUIImage.frame.size.width/2
        avatarUIImage.clipsToBounds = true
            
        
    }
   

}
