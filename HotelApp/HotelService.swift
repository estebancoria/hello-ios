//
//  SearchService.swift
//  HotelApp
//
//  Created by Esteban Coria on 5/10/16.
//  Copyright © 2016 Esteban Coria. All rights reserved.
//
import Foundation
import Alamofire
import Gloss

class HotelService {
    var PATH = "<URL TO HOTEL.JSON>"
    var hotels: [Hotel]?
    var listener: onResponseListener?
    static var instance: HotelService?
    
    static func getInstance() -> HotelService{
        if HotelService.instance==nil{
            HotelService.instance=HotelService()
     }
        return HotelService.instance!
    }
    
    init() {
}
    
    func requestHotels(url: String){
        Alamofire.request(url).responseJSON { response in
            
            if let json = response.result.value as! JSON!{
                let main = ResponseSearch(json: json)
                let items = main?.items
                if let rListener = self.listener as onResponseListener!{
                    rListener.onRequestResult(result: items!)
                }
            }
        }
    }
    
    func requestHotelDetails(url: String){
        Alamofire.request(url).responseJSON { response in
            if let json = response.result.value as! JSON!{
                let response = ResponseDetail(json: json)
                let hotel = response?.hotel
                if let rListener = self.listener as onResponseListener!{
                    rListener.onRequestResult(result: [hotel!])
                }
            }
        }
    }
    
    func getHotels(){
        if let hotelsArray = hotels as [Hotel]!{
            if let rListener = self.listener as onResponseListener!{
                rListener.onRequestResult(result: hotelsArray)
            }
        }else{
            requestHotels(url: PATH)
        }
    }
    
    func getHotelDetail(id: String){
        requestHotelDetails(url: PATH+"/"+id)
    }
}
