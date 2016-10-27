//
//  ReviewTableViewCell.swift
//  HotelApp
//
//  Created by Esteban Coria on 18/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var goodReview: UILabel!
    
    @IBOutlet weak var badReview: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
