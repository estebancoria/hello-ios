//
//  ResponseDetail.swift
//  HotelApp
//
//  Created by Esteban Coria on 9/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import Foundation
import Gloss

struct ResponseDetail: Decodable{
    let hotel: Hotel?
    let price: Hotel.Price?
    
    init?(json: JSON) {
        self.hotel = "hotel" <~~ json
        self.price = "price" <~~ json
    }
}
