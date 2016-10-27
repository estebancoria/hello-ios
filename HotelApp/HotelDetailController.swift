//
//  HotelDetailController.swift
//  HotelApp
//
//  Created by Esteban Coria on 5/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import UIKit
import Cosmos
class HotelDetailController: UIViewController,onResponseListener {
    
    // MARK: -Properties
    var hotelId: String?
    var hotelSelected: Hotel?
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var amenitiesView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var reviewsButton: UIButton!
    @IBOutlet weak var ratingStars: CosmosView!
    @IBOutlet weak var address: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ratingStars.settings.updateOnTouch = false
        HotelService.getInstance().listener = self
        HotelService.getInstance().getHotelDetail(id: hotelId!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: - Actions
    @IBAction func buyButtonPressed(_ sender: UIButton) {
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMap"{
            let mapViewController = segue.destination as! MapViewController
                mapViewController.address = hotelSelected?.id
                mapViewController.latitude = (hotelSelected?.geoLocation?.latitude)!
                mapViewController.longitude = (hotelSelected?.geoLocation?.longitude)!
                mapViewController.name = (hotelSelected?.name)!
            
        }else if segue.identifier == "goToReviews"{
            let hotelReviewViewController = segue.destination as! ReviewTableViewController
                hotelReviewViewController.hotelName = hotelSelected!.name
                hotelReviewViewController.reviews = (hotelSelected!.reviews)!
        
        }

    }
    func onRequestResult(result: [Hotel]) {
        hotelSelected = result[0]
        descriptionText.text = hotelSelected?.description
        let url = URL(string: (hotelSelected?.photoUrl!)!)
        self.image.kf.setImage(with: url,placeholder: UIImage(named: "hotelPlaceholder"))
        //rating.stars = (hotelSelected?.stars)!
        //pointsLabel.text = String((hotelSelected!.rating)!)
       if let reviews = hotelSelected!.reviews{
            reviewsButton.titleLabel?.text = String(reviews.count)
        }
        ratingStars.rating = Double(hotelSelected!.stars!)
        address.titleLabel?.text = hotelSelected!.address!
    }

}
