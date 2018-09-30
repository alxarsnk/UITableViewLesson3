//
//  TaggedCollectionViewController.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 29.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit

class TaggedCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var dataArray: [Icon]!

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var infoMainInformation: UILabel!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var followingLabel: UILabel!
    @IBOutlet weak var followingCoint: UILabel!
    @IBOutlet weak var followerLAbel: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var postCount: UILabel!
    @IBOutlet weak var InfoNameLabel: UILabel!
    @IBOutlet weak var avaImage: UIImageView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var taggedViewCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

         dataArray = [Icon](repeating: Icon(image:#imageLiteral(resourceName: "1pod")), count: 20)
        taggedViewCollection.delegate = self
        taggedViewCollection.dataSource = self
        editProfileButton.layer.borderWidth = 1
        avaImage.layer.cornerRadius = avaImage.frame.size.width / 2
        avaImage.clipsToBounds = true
    }

   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TaggedCollectionViewCell
        let icons = dataArray[indexPath.row]
        cell.configureCell(with: icons)
        
        return cell
    }
   

}
