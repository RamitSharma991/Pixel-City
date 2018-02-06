//
//  MapVC.swift
//  Pixel City
//
//  Created by Ramit sharma on 05/02/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapVC: UIViewController {

    //outlets
    @IBOutlet weak var mapView: MKMapView!
    
    let authStatus = CLLocationManager.authorizationStatus()
    var locationManager = CLLocationManager()
    let regionRadius: Double = 1000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
    }
    @IBAction func centreMapButtonPressed(_ sender: Any) {
        if authStatus == .authorizedAlways || authStatus == .authorizedWhenInUse {
            centerMapOnUserLocation()
        }
    }
    
}

extension MapVC: MKMapViewDelegate{
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else {return}
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(coordinate, regionRadius*2.0, regionRadius*2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
}
extension MapVC: CLLocationManagerDelegate{
    func configureLocationServices() {
        if authStatus == .notDetermined{
            locationManager.requestAlwaysAuthorization()
        }
        else {
            return
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerMapOnUserLocation()
    }
}
