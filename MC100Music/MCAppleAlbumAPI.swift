//
//  MCAppleAlbumAPI.swift
//  MC100Music
//
//  Created by Mark Clauss on 9/15/19.
//  Copyright © 2019 Mark Clauss. All rights reserved.
//
import UIKit
import Foundation

class MCAppleAlbumAPI {
    
    var albumStore = [Album]()
    
    open func fetchAlbumsJSON(_ closure: @escaping ()->Void) {
        let urlString = "https://rss.itunes.apple.com/api/v1/us/apple-music/top-albums/all/100/explicit.json"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            DispatchQueue.main.async {
                if let err = err {
                    print("Failed to get data from url:", err)
                    return
                }
                
                guard let data = data else { return }
                
                do
                {
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    {
//                        print(json["feed"])
                        if let rest = json["feed"] as? [String: Any]
                        {
                            for element in rest
                            {
                                if element.key == "copyright"
                                {
                                    let copyrightValue = element.value as? String ?? ""
                                }
                                if element.key == "icon"
                                {
                                    let iconUrl = element.value as? String ?? ""
                                }
                                if element.key == "results"
                                {
                                    if let results = element.value as? Array<Any>
                                    {
                                        for result in results
                                        {
                                            if let thisResult = result as? Dictionary<String, Any> {
                                                self.addToAlbum(thisResult)
                                            }
                                        }
                                        closure()
                                    }
                                }
                            }
                        }
                    }
                } catch let jsonErr {
                    print("Failed to decode:", jsonErr)
                }
            }
            
            }.resume()
    }
    
    func addToAlbum(_ result: Dictionary<String, Any> )
    {
        var itemName: String = ""
        var itemArtistName: String = ""
        var itemArtworkUrl100: String = ""
        var itemURL: String = ""
        var itemThumbnailImage: UIImage?
        for item in result
        {
            if item.key == "name" {
                itemName = item.value as? String ?? ""
            }
            if item.key == "artistName" {
                itemArtistName = item.value as? String ?? ""
            }
            if item.key == "artworkUrl100" {
                itemArtworkUrl100 = item.value as? String ?? ""
                
                if let url = URL(string: itemArtworkUrl100) {
                    if let imageData: NSData = NSData(contentsOf: url) {
                        itemThumbnailImage = UIImage(data: imageData as Data)
                    }
                }
            }
            if item.key == "url" {
                itemURL = item.value as? String ?? ""
            }
            
        }
        let nextAlbum = Album.init(
            artistName: itemArtistName,
            name: itemName,
            artworkUrl100: itemArtworkUrl100,
            url: itemURL,
            thumbnailImage: itemThumbnailImage)
        albumStore.append(nextAlbum)
    }
}

