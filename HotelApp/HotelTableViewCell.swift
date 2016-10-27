//
//  HotelTableViewCell.swift
//  HotelApp
//
//  Created by Esteban Coria on 6/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import UIKit
import Cosmos

class HotelTableViewCell: UITableViewCell {
    //MARK: properties

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var hotelImage: UIImageView!
    @IBOutlet weak var priceLebel: UILabel!
    @IBOutlet weak var ratingStars: CosmosView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ratingStars.settings.updateOnTouch = false
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
