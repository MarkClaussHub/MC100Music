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
        view.backgroundColor = .yellow
        
//        view.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
//        view.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        view.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true
//        view.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
}
