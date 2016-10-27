//
//  MapMark.swift
//  HotelApp
//
//  Created by Alguien en internet //

import Foundation
import MapKit

class MapMark: NSObject, MKAnnotation {
    var title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
        super.init()
    }
}
