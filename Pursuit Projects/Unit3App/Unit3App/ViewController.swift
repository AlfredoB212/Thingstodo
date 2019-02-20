//
//  ViewController.swift
//  Unit3App
//
//  Created by Alfredo Barragan on 1/3/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    private var podcasts = [Podcast]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        searchPodcasts()
        tableView.dataSource = self
        
    }
    private func searchPodcasts() {
        PodcastAPIClient.searchPodcast(keyword: "swift") { (appError, podcasts) in
            if let appError = appError {
                print(appError.errorMessage())
            } else if let podcasts = podcasts {
//                print("found \(podcasts.count)")
                self.podcasts = podcasts
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let detailViewController = segue.destination as? PodcastDetailsViewController else {
                fatalError("indexPath, detailVC nil")
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let podcast = podcasts[indexPath.row]
        cell.textLabel?.text = podcast.collectionName
        return cell 
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
}
