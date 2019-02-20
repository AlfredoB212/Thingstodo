//
//  ViewController.swift
//  TestingCoreLocation
//
//  Created by Alfredo Barragan on 2/7/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
class ViewController: UIViewController {
    @IBOutlet weak var myMapView: MKMapView!
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            // we need to say how accurate the data should be
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            myMapView.showsUserLocation = true
        } else {
           locationManager.requestWhenInUseAuthorization()
                locationManager.startUpdatingLocation()
                myMapView.showsUserLocation = true
        }
        
    }


}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("user changed the authorization")
        let currentLocation = myMapView.userLocation
        let myCurrentRegion = MKCoordinateRegion.init(center: currentLocation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        myMapView.setRegion(myCurrentRegion, animated: true)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation = locations.last else { return }
        let myCurrentRegion = MKCoordinateRegion(center: currentLocation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        myMapView.setRegion(myCurrentRegion, animated: true)
    }
}
