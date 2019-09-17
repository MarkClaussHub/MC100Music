//
//  MCDetailViewController.swift
//  MC100Music
//
//  Created by Mark Clauss on 9/12/19.
//  Copyright © 2019 Mark Clauss. All rights reserved.
//

import UIKit

class MCDetailViewController: UIViewController, UIScrollViewDelegate {

    var thisAlbum: Album?
    var topAlbumImage: UIImageView?
    var albumTitle: String?
    var artistName: String?
    var albumGenre: Array<Dictionary<String, String>>?
    var albumCopyright: String?
    var buttonTitle: String?
    let scrollView = UIScrollView(frame:UIScreen.main.nativeBounds)
    let contentView = UIView()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo:scrollView.topAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo:scrollView.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo:scrollView.trailingAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo:scrollView.bottomAnchor).isActive = true
        scrollView.bounces = true
        scrollView.bouncesZoom = true
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo:scrollView.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo:scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo:scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo:scrollView.bottomAnchor).isActive = true
        contentView.backgroundColor = .green
//        contentView.addSubview(button)
    }


    
}

