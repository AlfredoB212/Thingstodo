//
//  PodcastDetailsViewController.swift
//  Unit3App
//
//  Created by Alfredo Barragan on 1/3/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class PodcastDetailsViewController: UIViewController {
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    public var podcast: Podcast!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = podcast.collectionName
        // Do any additional setup after loading the view.
    }
    

    @IBAction func addToFavorites(_ sender: UIBarButtonItem) {
        let favorite = Favorite.init(trackId: podcast.trackId, favoritedBy: "Alfredo Barragan", collectionName: podcast.collectionName, artworkUrl600: podcast.artworkUrl600)
        do {
            let data = try  JSONEncoder().encode(favorite)
            PodcastAPIClient.favoritePodcast(data: data) { (appError, success) in
                if let appError = appError {
                    print(appError.errorMessage())
                } else if success {
                    print("successfully favorited podcast")
                } else {
                    print("dub")
                }
            }
        } catch {
            print("encoding error: \(error)")
        }
    }

}
