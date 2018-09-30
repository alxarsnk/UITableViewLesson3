//
//  UIViewControllerTapBar.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 26.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit

class UIViewControllerTapBar: UITabBarController {

    @IBOutlet weak var TapBar: UITabBar!
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        TapBar.frame = CGRect( x: 0, y: 290, width: UIScreen.main.bounds.width, height: 50)
      
    }

}
