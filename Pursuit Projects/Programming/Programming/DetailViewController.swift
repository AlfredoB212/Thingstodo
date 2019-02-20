//
//  DetailViewController.swift
//  Programming
//
//  Created by Alfredo Barragan on 1/23/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
var selectedCity: String!
var weatherData = [PeriodsWrapper]()

var imageData = [Image.HitWrapper]() {
    didSet{
        let randomNumber = Int.random(in: 0...imageData.count)
        ImageHelper.fetchImage(url: imageData[randomNumber].largeImageURL) { (appError, image) in
            if let appError = appError {
                print(appError)
            }
            if let image = image {
                DispatchQueue.main.async {
                    self.cityImage.image = image
                }
            }
        }
    }
}
@IBOutlet weak var cityImage: UIImageView!


override func viewDidLoad() {
    super.viewDidLoad()
    print(selectedCity)
    WeatherAndImageAPIClient.getCityImages(city: selectedCity) { (appError, data) in
        if let error = appError{
            print(error)
        }
        if let data = data{
            self.imageData = data
        }
    }
    
}




}
