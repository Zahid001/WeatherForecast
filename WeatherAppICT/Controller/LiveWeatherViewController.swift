//
//  ViewController.swift
//  WeatherAppICT
//
//  Created by Md Zahidul Islam Mazumder on 19/12/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import Foundation
class LiveWeatherViewController: UIViewController {
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //RequestHandler.shared.getRequest(Url: "https://api.openweathermap.org/data/2.5/weather?lat=51.50998&lon=-0.1337&APPID=c379e22089661592e59459eca3028a1c")
        
        locationManager.delegate = self
        getLocation()
        //locationSearch()
        //getLatLonfromIP()
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = UIColor.white
        window.rootViewController = LocationSearchTable()
        window.makeKeyAndVisible()
        
        
        
    }
    
    func getWeatherForecast(locValue: CLLocationCoordinate2D){
        
        RequestHandler.shared.getRequest(urlExtension: "/forecast/5b56d79fb2d1a41dd81282781fa6bf46/\(Double(locValue.latitude)),\(Double(locValue.longitude))"){
            data in
            //print("data:", data)
            
            if let data = data{
                print("hghhjhfvhf:",data)
                do {
                    let jsonDecoder = JSONDecoder()
                    let responseModel = try jsonDecoder.decode(RootClass.self, from: data)
                    print("Appplegjgfyjhfhtdgtffhdrgdfhygdr",responseModel )
                } catch {
                    print(error)
                }
            }
            
        }
        
        
        
    }
    
    
    func getLatLonfromIP(){
        
        RequestHandler.shared.getRequest(baseUrl: nil,urlExtension: "http://ip-api.com/json"){
            data in
            
            if let data = data{
                
                print("hghhjhfvhf:",data)
                do {
                    let jsonDecoder = JSONDecoder()
                    let responseModel = try jsonDecoder.decode(Ip.self, from: data)
                    //print("Appplegjgfyjhfhtdgtffhdrgdfhygdr",responseModel.lat! )
                    
                    self.getWeatherForecast(locValue: CLLocationCoordinate2DMake(responseModel.lat!, responseModel.lon!))
                    
                } catch {
                    print(error)
                }
                
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                    print("3524346576")
                    print("",json)
                }
                catch{
                    print("Could not serialize")
                }
            }
            
        }
        
    }
    
    
    func locationSearch(){
        
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = "Dhanmondi"
        
        let search = MKLocalSearch(request: searchRequest)
        
        search.start { response, error in
            guard let response = response else {
                print("Error: \(error?.localizedDescription ?? "Unknown error").")
                return
            }

            
            
            for item in response.mapItems {
                print(item.placemark.coordinate ?? "No phone number.")
            }
        }
        
    }
    
//    func getCurrentLocationWeather(locValue: CLLocationCoordinate2D){
//        RequestHandler.shared.getRequest(Url: "https://api.openweathermap.org/data/2.5/weather?lat=\(Double(locValue.latitude))&lon=\(Double(locValue.longitude))&APPID=c379e22089661592e59459eca3028a1c"){
//            data in
//
//            if let data = data{
//                print(data)
//                do {
//                    let jsonDecoder = JSONDecoder()
//                    let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data)
//                    print(responseModel )
//                } catch {
//                    print(error)
//                }
//            }
//
//        }
//
//
//
//
//    }


}


extension LiveWeatherViewController:CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        print("cfgxhjjb")
        //getCurrentLocationWeather(locValue: locValue)
        //getWeatherForecast(locValue: locValue)
    }
    
    func getLocation(){
        
        self.locationManager.requestAlwaysAuthorization()

        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()

        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
            locationManager.startUpdatingLocation()
        }
        
    }
    
}

