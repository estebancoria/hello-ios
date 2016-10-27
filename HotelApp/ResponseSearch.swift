//
//  File.swift
//  HotelApp
//
//  Created by Esteban Coria on 4/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//


import Foundation
import Gloss

struct ResponseSearch: Decodable {
    
    var metaData: MetaData?
    let items: [Hotel]?
    
    init?(json: JSON) {
        self.metaData = "meta_data" <~~ json
        self.items = "items" <~~ json
    }
    
}
struct MetaData: Decodable {
    
    var message: String?
    var code: String?
    var uow: String?
    
    // MARK: - Deserialization
    init?(json: JSON) {
        self.message = "message" <~~ json
        self.code = "code" <~~ json
        self.uow = "uow" <~~ json
    }
    
}

 






