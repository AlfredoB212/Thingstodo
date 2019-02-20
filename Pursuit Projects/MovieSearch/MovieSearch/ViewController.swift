//
//  ViewController.swift
//  MovieSearch
//
//  Created by Alfredo Barragan on 12/7/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        private var movies = [Movie]() {
            didSet {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
        private func showAlert(title: String, message: String) {
            let alertcontroller = UIAlertController(title: title,
                                                    message: message, preferredStyle: .alert)
            
            
            
            
            present(alertcontroller, animated: true, completion: nil)
            
        }
        
        private func searchMovies(keyword: String) {
            guard  let encodedKeyword = keyword.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
            movieSearchAPI.search(keyword: encodedKeyword) {(error, movies) in
                if let error = error {
                    //here function showAlert
                    self.showAlert(title: "Error", message: "\(error)")
                } else if let movieResults = movies {
                    self.movies = movieResults
                }
            }
        }
    }
    
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movies.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
            let movie = movies[indexPath.row]
            cell.textLabel?.text = movie.trackName
            return cell
        }
    }
    
    extension ViewController: UISearchBarDelegate {
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            guard let searchText = searchBar.text else { return }
            searchMovies(keyword: searchText)
        }
    }


}

