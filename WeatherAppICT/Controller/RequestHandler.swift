//
//  RequestHandler.swift
//  WeatherAppICT
//
//  Created by Md Zahidul Islam Mazumder on 19/12/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import Foundation
import UIKit

let baseUrl = "https://api.darksky.net"
class RequestHandler{
    
    static let shared = RequestHandler()
    
    private init(){}
    
    //    func getRequestWithHeader(urlExtension:String){
    //
    //        let headers = [
    //            "x-rapidapi-host": "community-open-weather-map.p.rapidapi.com",
    //            "x-rapidapi-key": "6a2b9ff5a9msh9dfb8ca364e93dep1ac43fjsn7d2d459bb92c"
    //        ]
    //
    //       // https://community-open-weather-map.p.rapidapi.com/forecast/daily?lat=35&lon=139&cnt=10&units=metric%20or%20imperial
    //
    //        let request = NSMutableURLRequest(url: NSURL(string: "https://community-open-weather-map.p.rapidapi.com" + urlExtension)! as URL,
    //            cachePolicy: .useProtocolCachePolicy,
    //        timeoutInterval: 10.0)
    //
    //        request.httpMethod = "GET"
    //        request.allHTTPHeaderFields = headers
    //
    //        let session = URLSession.shared
    //        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    //
    //            if let responseData = data
    //            {
    //                do{
    //                    let json = try JSONSerialization.jsonObject(with: responseData, options: JSONSerialization.ReadingOptions.allowFragments)
    //                    print(json)
    //                }catch{
    //                    print("Could not serialize")
    //                }
    //            }
    //
    //            if (error != nil) {
    //                print(error)
    //            } else {
    //                let httpResponse = response as? HTTPURLResponse
    //                print(httpResponse!)
    //            }
    //        })
    //
    //        dataTask.resume()
    //
    //    }
    //
    func getRequest(baseUrl:String? = "https://api.darksky.net" ,urlExtension:String,completionClosure: @escaping  (Foundation.Data?) -> ()) {
        
        let session = URLSession.shared
        let url = URL(string: (baseUrl ?? "") + urlExtension)!
        
        DispatchQueue.main.async
            {
                
                session.dataTask(with: url) { data, response, error in
                    
                    if let data = data{
                        completionClosure(data)
                    }
                    
                    /*
                     do{
                     let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                     print("3524346576")
                     print("",json)
                     }
                     catch{
                     print("Could not serialize")
                     }
                     */
                }.resume()
        }
    }
    
}


