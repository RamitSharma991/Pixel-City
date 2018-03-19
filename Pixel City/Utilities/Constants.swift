//
//  Constants.swift
//  Pixel City
//
//  Created by Ramit sharma on 14/02/18.
//  Copyright © 2018 Ramit sharma. All rights reserved.
//

import Foundation


let APIKey = "d4229aa4a45ce546b83b4e1c1b1f2705"

func flickrURL(forApiKey key: String, withAnnotation annotation: DroppablePin, addnumberOfPhotos number: Int) -> String {
    
    return " https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(APIKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=5&radius_units=km&per_page=\(number)40&format=json&nojsoncallback=1"


    
}

