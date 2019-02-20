//
//  SecondAnimalViewController.swift
//  Navigations
//
//  Created by Alfredo Barragan on 11/26/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class SecondAnimalViewController: UIViewController {
    @IBOutlet weak var secondAnimalView: UITableView!
    
    var animalList =   [Animal(name: "Pigeon", image: UIImage(named: "Pigeon")!, animalClass: "Bird"),
                        Animal(name: "Cow", image: UIImage(named: "Cow")!, animalClass: "Mammal"),
                        Animal(name: "Goldfish", image: UIImage(named: "GoldFish")!, animalClass: "Fish"),
                        Animal(name: "Spider", image: UIImage(named: "Spider")!, animalClass: "Arthopod"),
                        Animal(name: "SolidSnake", image: UIImage(named: "Solid Snake")!, animalClass: "Reptile")]
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondAnimalView.dataSource = self
        secondAnimalView.delegate = self 

        
    }
}


extension SecondAnimalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = secondAnimalView.dequeueReusableCell(withIdentifier: "secondAnimalCell", for: indexPath) as? SecondAnimalCell else { return UITableViewCell() }
    
    
        cell.secondAnimalClass.text = animalList[indexPath.row].animalClass
        cell.secondAnimalImage.image = animalList[indexPath.row].image
        cell.secondAnimalName.text = animalList[indexPath.row].name
        
        
        return cell
    
    }



}


extension SecondAnimalViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let vc =
            storyboard.instantiateViewController(withIdentifier: "secondDetail") as? SecondDetailViewController else {return}
            vc.modalPresentationStyle = .overCurrentContext
        
        
        
        
        present(vc, animated: true, completion: nil)
    
    
    
    }
}
