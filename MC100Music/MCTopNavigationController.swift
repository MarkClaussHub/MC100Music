//
//  MCTopNavigationController.swift
//  MC100Music
//
//  Created by Mark Clauss on 9/14/19.
//  Copyright © 2019 Mark Clauss. All rights reserved.
//

import UIKit
import Foundation

class MCTopNavigationController : UINavigationController 
{
//    var tableController: MCAlbumTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.isNavigationBarHidden = false
        super.title = "MC 100 Music List"
        //        super.view.translatesAutoresizingMaskIntoConstraints = false
//        super.view.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
//        super.view.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        super.view.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        super.view.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        view.backgroundColor = .yellow
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
}
