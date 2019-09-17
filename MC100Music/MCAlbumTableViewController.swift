//
//  MCAlbumTableViewController.swift
//  MC100Music
//
//  Created by Mark Clauss on 9/13/19.
//  Copyright © 2019 Mark Clauss. All rights reserved.
//

import UIKit
import Foundation

class MCAlbumTableViewController : UITableViewController
{
    
    private let subtitleStyle = "subtitleStyle"
    private var albumsList: [Album] = []
    private let appleAlbumAPI = MCAppleAlbumAPI()

    override func loadView() {
        super.loadView()
        tableView.dataSource = self
        
        appleAlbumAPI.fetchAlbumsJSON({
            self.dataloadedShowInTable()
        })
        view.backgroundColor = .blue
        tableView.backgroundColor = .yellow
        tableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        albumsList = appleAlbumAPI.albumStore
        return albumsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: subtitleStyle )
                else { return UITableViewCell(style: .subtitle, reuseIdentifier: subtitleStyle )
            }
            return cell
        }()
        
        if indexPath.row < albumsList.count
        {
            cell.textLabel?.text  = albumsList[indexPath.row].name
            cell.detailTextLabel?.text = albumsList[indexPath.row].artistName
            let image: UIImage?
            image = albumsList[indexPath.row].thumbnailImage
            if image != nil {
                cell.imageView?.image = image
            }
        }
        else
        {
            cell.textLabel?.text = ""
            cell.detailTextLabel?.text = ""
        }
        return cell
    }
    
    func dataloadedShowInTable() {
        tableView.reloadData()
    }
}


