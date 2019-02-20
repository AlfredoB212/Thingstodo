//
//  DogCellCollectionViewCell.swift
//  CollectionViews
//
//  Created by Alfredo Barragan on 1/9/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class DogCell: UICollectionViewCell {
    @IBOutlet weak var dogImageView: UIImageView!
    
    override func prepareForReuse() {
        dogImageView.image = nil
    }
}
