//
//  MapVC.swift
//  Pixel City
//
//  Created by Ramit sharma on 05/02/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    //outlets
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
    @IBAction func centreMapButtonPressed(_ sender: Any) {
    }
    
}

extension MapVC: MKMapViewDelegate{
    
}

