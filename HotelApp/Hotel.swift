//
//  Hotel.swift
//  HotelApp
//
//  Created by Esteban Coria on 9/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import Foundation
import Gloss
import UIKit

struct Hotel: Decodable{
    
    let id: String?
    let description: String?
    let photoUrl: String?
    let stars: Int?
    let name: String?
    let rating: Double?
    let price: Price?
    let address: String?
    let reviews: [Reviews]?
    let amenities: [Amenities]?
    let geoLocation: GeoLocation?
    
    
    init?(json: JSON) {
        self.id = "id" <~~ json
        self.photoUrl = "main_picture" <~~ json
        self.stars = "stars" <~~ json
        self.name = "name" <~~ json
        self.rating = "rating" <~~ json
        self.price = "price" <~~ json
        self.description = "description" <~~ json
        self.reviews = "reviews" <~~ json
        self.amenities = "amenities" <~~ json
        self.geoLocation = "geo_location" <~~ json
        self.address = "address" <~~ json
    }
    
    struct Amenities: Decodable {
        
        var id: String?
        var description: String?
        
        init?(json: JSON) {
            self.id = "id" <~~ json
            self.description = "description" <~~ json
        }
        
    }
    
    struct Price: Decodable {
        
        var currency: Currency?
        var finalPrice: Bool?
        var base: Int?
        var best: Int?
        
        init?(json: JSON) {
            self.currency = "currency" <~~ json
            self.finalPrice = "final_price" <~~ json
            self.base = "base" <~~ json
            self.best = "best" <~~ json
        }
        
    }

    
    struct GeoLocation: Decodable {
        let longitude: Double?
        let latitude: Double?
        init?(json: JSON) {
            self.latitude = "latitude" <~~ json
            self.longitude = "longitude" <~~ json
        }
    }
    struct Currency: Decodable {
        
        var code: String?
        var mask: String?
        var ratio: Double?
        
        init?(json: JSON) {
            self.code = "code" <~~ json
            self.mask = "mask" <~~ json
            self.ratio = "ratio" <~~ json
        }
        
    }
}
