//
//  CustoTableViewController.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 27.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit

struct Photo{
    var nickname: String!
    var avatar: UIImage
    var mainphoto: UIImage
    var like: UIImage
    var comment: UIImage
    var direct: UIImage
    var archive: UIImage
    var likesLabel: String!
}

class CustoTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dataArray: [Photo]!
    
    @IBOutlet weak var navBAr: UINavigationItem!
    @IBOutlet weak var profileInfo: UILabel!
    @IBOutlet weak var editProfileButton: UIButton!
    @IBOutlet weak var followingLAbel: UILabel!
    @IBOutlet weak var countOfFollowing: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var countOfFollowers: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var countOfPosts: UILabel!
    @IBOutlet weak var profileSelfName: UILabel!
    @IBOutlet weak var profileAva: UIImageView!
    @IBOutlet weak var profileView: UIView!

    
    @IBOutlet var TapBarTableView: UIView!
    @IBOutlet var TapBar: UIView!
    @IBOutlet weak var tableViewtest: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArray = [Photo](repeating: Photo(nickname: "alxarsnk", avatar: #imageLiteral(resourceName: "ava"), mainphoto: #imageLiteral(resourceName: "2pod"), like: #imageLiteral(resourceName: "like"), comment: #imageLiteral(resourceName: "com"), direct: #imageLiteral(resourceName: "next_btn-control"), archive: #imageLiteral(resourceName: "icon-home"), likesLabel: "liked by: none, kkdkdk_d12, 213"), count: 20)
        
        profileAva.layer.cornerRadius = profileAva.frame.size.width/2
        profileAva.clipsToBounds = true
        tableViewtest.delegate = self
        tableViewtest.dataSource = self
        tableViewtest.dequeueReusableCell(withIdentifier: "cell")?.layer.frame.size.width = UIScreen.main.bounds.size.width; editProfileButton.layer.borderWidth = 1.0
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let photos = dataArray[indexPath.row]
      
        cell.configureCell(with: photos)
       
        
      
        return cell
    }
   
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
    }
   
    func tableView(_ tableView: UITableView,
                   widthForRowAt indexPath: IndexPath) -> CGFloat{
        return UIScreen.main.bounds.width
    }

}

