//
//  TVViewController.swift
//  Programming
//
//  Created by Alfredo Barragan on 1/23/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class TVViewController: UIViewController {
    lazy var myTableView: UITableView = {
      let tv = UITableView()
        tv.dataSource = self
        tv.delegate = self
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(myTableView)
        setConstraints()
        
    }
    func setConstraints() {
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
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
extension TVViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = indexPath.row.description
    }
    
    
}
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITextFieldDelegate {
    
    var selectedCity = "New York"
    var weatherResult = [PeriodsWrapper](){
        didSet{
            DispatchQueue.main.async {
                self.cityForecastCollectionView.reloadData()
            }
        }
    }
    @IBOutlet weak var cityWeather: UILabel!
    @IBOutlet weak var cityForecastCollectionView: UICollectionView!
    @IBOutlet weak var zipCodTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityForecastCollectionView.delegate = self
        cityForecastCollectionView.dataSource = self
        zipCodTextField.delegate = self
        WeatherAndImageAPIClient.searchCityWeather(zipCode: "11103") { (appError, data) in
            if let appError = appError {
                print(appError.errorMessage())
            }
            if let data = data {
                self.weatherResult = data
            }
            ZipCodeHelper.getLocationName(from: "11103") { (error, localityName, zipcode) in
                if let error = error {
                    print("failed to get location name: \(error)")
                } else if let localityName = localityName {
                    self.cityWeather.text = "The forecast for \(localityName)"
                }
                
            }
            
        }
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailedWeathersViewController else {return}
        destination.selectedCity = selectedCity
        destination.weatherData = weatherResult
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return weatherResult.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as? WeatherCollectionViewCell else {return UICollectionViewCell()}
        let weatherToSet = weatherResult[indexPath.row]
        cell.dateLabel.text = DateHelper.getDate(date: weatherToSet.dateTimeISO)
        cell.weatherImage.image = ImageHelper.getWeatherImage(icon: weatherToSet.icon)
        cell.highLabel.text = weatherToSet.maxTempF.description
        cell.lowLabel.text = weatherToSet.minTempF.description
        return cell
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            ZipCodeHelper.getLocationName(from: text) { (error, localityName, zipCode) in
                if let error = error {
                    print("failed to get location name: \(error)")
                    let alert = UIAlertController.init(title: "No ZipCode Found", message: "", preferredStyle: UIAlertController.Style.alert)
                    let okay = UIAlertAction.init(title: "Okay", style: .default, handler: { (UIAlertAction) in
                        self.dismiss(animated: true, completion: nil)
                    })
                    alert.addAction(okay)
                    self.present(alert, animated: true, completion: nil)
                } else if let localityName = localityName {
                    self.cityWeather.text = "The forecast for \(localityName)"
                    self.selectedCity = localityName
                    
                    
                }
                if let zipcode = zipCode {
                    WeatherAndImageAPIClient.searchCityWeather(zipCode: zipcode) { (appError, data) in
                        if let appError = appError {
                            
                            
                            print(appError.errorMessage())
                        }
                        if let data = data {
                            self.weatherResult = data
                        }
                    }
                }
            }
            
        }
        return true
    }
}
