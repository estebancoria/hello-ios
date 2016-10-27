//
//  Reviews.swift
//  HotelApp
//
//  Created by Esteban Coria on 9/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import Foundation
import Gloss

struct Reviews: Decodable{
    let comments: Comments?
    let user: User?
    
    init?(json: JSON) {
        self.comments = "comments" <~~ json
        self.user = "user" <~~ json
    }
    
    struct Comments: Decodable{
        let good: String?
        let bad: String?
        
        init?(json: JSON) {
            self.good = "good" <~~ json
            self.bad = "bad" <~~ json
        }
    }
    
    struct User: Decodable{
        let name: String?
        
        init?(json: JSON) {
            self.name = "name" <~~ json
        }
    }
}
