//
//  FirstAnimalViewController.swift
//  Navigations
//
//  Created by Alfredo Barragan on 11/26/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class FirstAnimalViewController: UIViewController {

    
    @IBOutlet weak var AnimalView: UITableView!
    
    var animalList =   [Animal(name: "Pigeon", image: UIImage(named: "Pigeon")!, animalClass: "Bird"),
                        Animal(name: "Cow", image: UIImage(named: "Cow")!, animalClass: "Mammal"),
                        Animal(name: "Goldfish", image: UIImage(named: "GoldFish")!, animalClass: "Fish"),
                        Animal(name: "Spider", image: UIImage(named: "Spider")!, animalClass: "Arthopod"),
                        Animal(name: "SolidSnake", image: UIImage(named: "Solid Snake")!, animalClass: "Reptile")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimalView.dataSource = self
        AnimalView.delegate = self
       
    }
    

}


extension FirstAnimalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = AnimalView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else { return UITableViewCell()}
        
        cell.animalName.text = animalList[indexPath.row].name
        cell.animalPicture.image = animalList[indexPath.row].image
        cell.animalClass.text = animalList[indexPath.row].animalClass
        
        
        return cell
    }
    
    
}



extension FirstAnimalViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
