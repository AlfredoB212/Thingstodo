//
//  FavoritesViewController.swift
//  NYTBestsellers
//
//  Created by Alfredo Barragan on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    let favoritesView = Favorite()
    var allFavorites = DataPersistenceModel.getFavBooks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Favorites()"
        view.addSubview(favoritesView)
        favoritesView.favCollectionView.dataSource = self
        
    }
    
    func reload() {
        allFavorites = DataPersistenceModel.getFavBooks()
        favoritesView.favCollectionView.reloadData()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        favoritesView.favCollectionView.reloadData()
        allFavorites = DataPersistenceModel.getFavBooks()
    }
    
    @objc func actionButtonPressed(sender: UIButton) {
        let optionMenu = UIAlertController.init(title: nil, message: nil, preferredStyle: .actionSheet)
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (UIAlertAction) in
            DataPersistenceModel.delete(index: sender.tag)
            self.reload()
        }
        optionMenu.addAction(deleteAction)
        self.present(optionMenu, animated: true, completion: nil)
        
    }
    
}
extension FavoriteViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allFavorites.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoritesCell", for: indexPath) as? FavoritesCollectionViewCell else { return UICollectionViewCell() }
        let favToSet = allFavorites[indexPath.row]
        if let image = UIImage(data: favToSet.bookImage) {
            cell.bookImage.image = image
        }
        cell.actionButton.tag = indexPath.row
        cell.actionButton.addTarget(self, action: #selector(actionButtonPressed(sender:)), for: .touchUpInside)
        cell.bookLabel.text = "\(favToSet.weeksOnBS) weeks on best seller list"
        cell.bookTextView.text = favToSet.desciption
        return cell
    }
    
    
}
