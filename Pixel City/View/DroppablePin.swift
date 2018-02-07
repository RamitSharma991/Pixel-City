//
//  DroppablePin.swift
//  Pixel City
//
//  Created by Ramit sharma on 07/02/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import UIKit
import MapKit


class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier:String

    init(coorfinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coorfinate
        self.identifier = identifier
        super.init()
    }
    
    
}
