//
//  HotelsTableViewController.swift
//  HotelApp
//
//  Created by Esteban Coria on 6/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class HotelsTableViewController: UITableViewController,onResponseListener {
    //MARK: variables
    var hotels = [Hotel]()
    var hotelService = HotelService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Hotels"
        HotelService.getInstance().listener = self
        HotelService.getInstance().getHotels()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "HotelTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! HotelTableViewCell

        let hotel = hotels[indexPath.row]
        let url = URL(string: hotel.photoUrl!)
        cell.hotelImage.kf.setImage(with: url,placeholder: UIImage(named: "hotelPlaceholder"))
        cell.name.text = hotel.name
        cell.priceLebel.text = "$ " + String(describing: (hotel.price!.best)!)
        cell.ratingStars.rating = Double(hotel.stars!)
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hotelDetailController = segue.destination as! HotelDetailController
 
        // Get the cell that generated this segue.
        if let selectedHotelCell = sender as? HotelTableViewCell {
            let indexPath = tableView.indexPath(for: selectedHotelCell)!
            let selectedHotel = hotels[indexPath.row]
            hotelDetailController.hotelId = selectedHotel.id
        }
 
    }

    func onRequestResult(result: [Hotel]) {
        hotels = result
        tableView.reloadData()
    }

}
