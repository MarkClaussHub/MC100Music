//
//  ViewController.swift
//  MC100Music
//
//  Created by Mark Clauss on 9/12/19.
//  Copyright © 2019 Mark Clauss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var navigation:MCTopNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigation = MCTopNavigationController()
 //       guard navigation != nil else { return }
        self.addChild(navigation!)
//        tableViewController? = MCAlbumTableViewController(style: .plain)
//        guard tableViewController != nil else { return }
    }


}

