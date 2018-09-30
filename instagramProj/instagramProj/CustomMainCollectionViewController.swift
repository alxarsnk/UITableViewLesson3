//
//  CustomMainCollectionViewController.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 29.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit
struct Icon {
    var image: UIImage
}

class CustomMainCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var infoMAinInformation: UILabel!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var folowingLabel: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    @IBOutlet weak var folloversLabel: UILabel!
    @IBOutlet weak var followersCount: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var postCount: UILabel!
    @IBOutlet weak var infoNameLAbel: UILabel!
    @IBOutlet weak var infoAvaImage: UIImageView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var MainCollectionView: UICollectionView!
  
    var dataArray: [Icon]!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomMainCollectionViewCell
        let icons = dataArray[indexPath.row]
        cell.configureCell(with: icons)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        dataArray = [Icon](repeating: Icon(image: #imageLiteral(resourceName: "2pod")), count: 20)
        MainCollectionView.delegate = self
        MainCollectionView.dataSource = self
        editProfileButton.layer.borderWidth = 1.0
        infoAvaImage.layer.cornerRadius = infoAvaImage.frame.size.width/2
        infoAvaImage.clipsToBounds = true
    }
 

}
