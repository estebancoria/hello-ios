//
//  RatingViewController.swift
//  HotelApp
//
//  Created by Esteban Coria on 5/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import UIKit

class AmenitiesViewController: UIView {

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let image = UIImage(named: "NoImageSet")
        let label = UILabel(frame: CGRect(x: 0, y: 50, width: 100, height: 10))
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .footnote)
        label.text = "Guifii"
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 25, y: 0, width: 50, height: 50)
        
        addSubview(imageView)
        addSubview(label)
        
        

    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
