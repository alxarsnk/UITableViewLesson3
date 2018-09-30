//
//  TestNavViewController.swift
//  instagramProj
//
//  Created by Александр Арсенюк on 30.09.2018.
//  Copyright © 2018 Александр Арсенюк. All rights reserved.
//

import UIKit

class TestNavViewController: UINavigationController {

    @IBOutlet weak var test: UITabBarItem!
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        test.accessibilityFrame = CGRect( x: 0, y: 290, width: 414, height: 50)
        
    }


}
