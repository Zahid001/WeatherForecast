//
//  DaysForecastViewController.swift
//  WeatherAppICT
//
//  Created by Md Zahidul Islam Mazumder on 6/1/20.
//  Copyright © 2020 Md Zahidul Islam Mazumder. All rights reserved.
//

import UIKit
import MapKit

class DaysForecastViewController: UIViewController {

    //PopUp
    
    @IBOutlet weak var opacityColor: UIVisualEffectView!
    
    @IBOutlet weak var backgroundBtn: UIButton!
    
    @IBOutlet weak var popView: UIView!
    
    
    
    @IBOutlet weak var datePopUp: UILabel!
    
    @IBOutlet weak var popUpPredictImg: UIImageView!
    
    @IBOutlet weak var popUpPredict: UILabel!
    
    @IBOutlet weak var popUpTempRange: UILabel!
    
    @IBOutlet weak var popUpTempIcon: UIImageView!
    
    @IBOutlet weak var popUpTempDescription: UILabel!
    
    @IBOutlet weak var popHumidity: UILabel!
    
    @IBOutlet weak var popPrecipType: UILabel!
    
    @IBOutlet weak var popPrecipProbability: UILabel!
    
    @IBOutlet weak var popWindSpeed: UILabel!
    
    @IBOutlet weak var popWindBearing: UILabel!
    
    @IBOutlet weak var popDewPoint: UILabel!
    
    @IBOutlet weak var popPressure: UILabel!
    
    @IBOutlet weak var popCloudCover: UILabel!
    
    @IBOutlet weak var popOzone: UILabel!
    
    @IBOutlet weak var popSun: UILabel!
    
    
    
    @IBOutlet weak var dayTableView: UITableView!
    
    @IBOutlet weak var sevenDaysPageSegment: UISegmentedControl!
    
    
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var searchLocation: UITextField!
    
    
    @IBOutlet var mainView: UIView!
    
    
    
    var tblSearchResult: UITableView!
    
    var searchCompleter = MKLocalSearchCompleter()
    var searchResults = [MKLocalSearchCompletion]()
    
    var daysInfo:[Data?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(true, animated: true)
        popOverView(status: true)
        
        
        searchLocation.isHidden = true
        
        searchtableViewInit()
        
        sevenDaysPageSegment.selectedSegmentIndex = 2
    sevenDaysPageSegment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
    sevenDaysPageSegment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
        
       dayTableView.backgroundColor = UIColor.clear
        dayTableView.rowHeight = 150
        print("3254325sdvxcv")
        print( (RequestHandler.shared.dayData as AnyObject))
        daysInfo = RequestHandler.shared.dayData
        mainView.frame = CGRect(x: 0 , y: 0, width: self.view.frame.width, height: self.view.frame.height)
        // Do any additional setup after loading the view.
    }
    
    func popOverView(status:Bool)  {
        popView.layer.cornerRadius = 12
        opacityColor.isHidden = status
        backgroundBtn.isHidden = status
        popView.isHidden = status
        
    }
    
    
    @IBAction func backgroundBtnAction(_ sender: UIButton) {
        popOverView(status: true)
    }
    
    func createDateTime(timestamp: String) -> String {
        var strDate = "undefined"
            
        if let unixTime = Double(timestamp) {
            let date = Date(timeIntervalSince1970: unixTime)
            let dateFormatter = DateFormatter()
            let timezone = TimeZone.current.abbreviation() ?? "CET"  // get current TimeZone abbreviation or set to CET
            dateFormatter.timeZone = TimeZone(abbreviation: timezone) //Set timezone that you want
            dateFormatter.locale = NSLocale.current
            dateFormatter.dateFormat = "hh:mm a"
            //dateFormatter.dateFormat = "dd.MM.yyyy HH:mm" //Specify your format that you want
            strDate = dateFormatter.string(from: date)
        }
            
        return strDate
    }
    
    func searchtableViewInit(){
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height

        tblSearchResult = UITableView(frame: CGRect(x: 0, y: searchLocation.frame.height, width: displayWidth, height: displayHeight - searchLocation.frame.height))
        tblSearchResult.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tblSearchResult.dataSource = self
        tblSearchResult.delegate = self
        self.view.addSubview(tblSearchResult)
        
        tblSearchResult.separatorColor = UIColor.clear
        searchCompleter.delegate = self
        
        tblSearchResult.isHidden = true
    }
    
    @IBAction func locationButtonAction(_ sender: UIButton) {
        searchLocation.isHidden = false
        locationButton.isHidden = true
        searchLocation.becomeFirstResponder()
    }
    
    
    
    @IBAction func searchLocationActivity(_ sender: UITextField) {
        
        tblSearchResult.isHidden = false
        //print("Value : \(sender.text ?? "NoValue")")
        self.tblSearchResult.reloadData()
        
        //searchCompleter.filterType = .locationsOnly
        searchCompleter.queryFragment = sender.text ?? ""
        
    }
    
    
    @IBAction func segmentAction(_ sender: Any) {
        
        switch sevenDaysPageSegment.selectedSegmentIndex {
        case 0:
            print(sevenDaysPageSegment.selectedSegmentIndex)
            //performSegue(withIdentifier: "today", sender: self)
            dismiss(animated: false, completion: nil)
        case 1:
            print(sevenDaysPageSegment.selectedSegmentIndex)
            //performSegue(withIdentifier: "today", sender: self)
        case 2:
            print(sevenDaysPageSegment.selectedSegmentIndex)
        default:
            break;
        }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension DaysForecastViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == tblSearchResult {
            return searchResults.count
        }
        else{
            return daysInfo.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == dayTableView {
            
            //if indexPath.row > 0{
                
                let cell = dayTableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath) as! DaysTableViewCell
                             //let d = daysInfo?.data
                            
                            
                            
                            cell.layer.backgroundColor = UIColor(red: 0.243, green: 0.243, blue: 0.243, alpha: 0.75).cgColor
                             print("wereytfghbgfcbvfdbgfhtrh909807")
                             print(daysInfo[indexPath.row]?.summary! ?? "Cloudy")
                             
                             cell.tempDescription.text = daysInfo[indexPath.row]?.summary
                             cell.tempRange.text = "\(Int( daysInfo[indexPath.row]?.temperatureLow ?? 0 ))°C- \(Int( daysInfo[indexPath.row]?.temperatureHigh ?? 0  ))°C"
                             
                             let timestamp: NSNumber = daysInfo[indexPath.row]?.time as NSNumber? ?? 1579248000 as NSNumber
                             print(timestamp)  // 1524654473.108564
                             let exactDate = NSDate(timeIntervalSince1970: TimeInterval(truncating: timestamp))
                             let dateFormatt = DateFormatter()
                             dateFormatt.dateFormat = "EEEE, MMM d, yyyy"
                             print(dateFormatt.string(from: exactDate as Date)) //25/04/2018 04:37:53 PM
                             
                             
                             cell.dayDate.text = "\(NSDate(timeIntervalSince1970: TimeInterval(daysInfo[indexPath.row]?.time ?? 1579248000)))"
                             cell.dayDate.text = dateFormatt.string(from: exactDate as Date)
                             cell.forecastProbability.text = "\(daysInfo[indexPath.row]?.cloudCover ?? 0)"
                             
                             cell.humidity.text = "Humidity: \(daysInfo[indexPath.row]?.humidity ?? 00)"
                             cell.precipitation.text = "Precipitation: \(daysInfo[indexPath.row]?.precipProbability ?? 00)"
                             cell.chanceRain.text = "Dew point: \(daysInfo[indexPath.row]?.dewPoint ?? 0.0)"
                             cell.windChil.text = "Wind bearing: \(daysInfo[indexPath.row]?.windBearing ?? 0)"
                             
                //            if indexPath.row < 2 {
                //                dayTableView.rowHeight = 0
                //            }
                             
                            //cell.daysCellBtnAction.addTarget(self, action: #selector(connected(_:)), for: .touchUpInside)
                            //let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tothepoint(_:)))
                            //cell.description.isUserInteractionEnabled = true
                            //cell.yourImg.isUserInteractionEnabled = true
                            //print("index path:",indexPath.row )
                            //cell.contentView.tag = indexPath.row
                            //cell.contentView.addGestureRecognizer(tapGestureRecognizer)
                            
                             
            return cell
            //}
                
//            else{
//                let cell = UITableViewCell()
//                cell.layer.backgroundColor = UIColor.clear.cgColor
//
//                return cell
//            }
            
            
            
        }
            
            
        else{

            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

            let searchResult = searchResults[indexPath.row]
            let strTitle = searchResult.title
            let strSubTitle = searchResult.subtitle

            cell.textLabel?.text = strTitle
            cell.detailTextLabel?.text = strSubTitle

            //tableView.separatorColor = UIColor.lightGray

            return cell
        }
        
        
            
    }
    
    
    
     @objc func connected(_ sender:UIButton){
        print("ihbyuvg")
        print(sender.tag)
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == dayTableView {
            
            print(indexPath.row)
            
            popOverView(status: false)
            
            popUpTempDescription.text = "\(daysInfo[indexPath.row]?.summary ?? "")"
            popUpTempRange.text = "\(Int( daysInfo[indexPath.row]?.temperatureLow ?? 0 ))°C- \(Int( daysInfo[indexPath.row]?.temperatureHigh ?? 0  ))°C"
            
            let timestamp: NSNumber = daysInfo[indexPath.row]?.time as NSNumber? ?? 1579248000 as NSNumber
            print(timestamp)  // 1524654473.108564
            let exactDate = NSDate(timeIntervalSince1970: TimeInterval(truncating: timestamp))
            let dateFormatt = DateFormatter()
            dateFormatt.dateFormat = "EEEE, MMM d, yyyy"
            print(dateFormatt.string(from: exactDate as Date)) //25/04/2018 04:37:53 PM
            
            
            //datePopUp.text = "\(NSDate(timeIntervalSince1970: TimeInterval(daysInfo[indexPath.row]?.time ?? 1579248000)))"
            datePopUp.text = dateFormatt.string(from: exactDate as Date)
            popOzone.text = "Ozone: \(daysInfo[indexPath.row]?.ozone ?? 0)"
            
            
            popCloudCover.text = "Cloud Cover: \(daysInfo[indexPath.row]?.cloudCover ?? 0)"
            
            popHumidity.text = "Humidity: \(daysInfo[indexPath.row]?.humidity ?? 00)"
            popPrecipProbability.text = "Precipitation: \(daysInfo[indexPath.row]?.precipProbability ?? 00)"
            popDewPoint.text = "Dew point: \(daysInfo[indexPath.row]?.dewPoint ?? 0.0)"
            popWindBearing.text = "Wind bearing: \(daysInfo[indexPath.row]?.windBearing ?? 0)"
            popPressure.text = "Pressure: \(daysInfo[indexPath.row]?.pressure ?? 0)"
            popPrecipType.text = "Precip Intensity: \(daysInfo[indexPath.row]?.precipIntensity ?? 0)"
            
            popWindSpeed.text = "Wind Speed: \(daysInfo[indexPath.row]?.windSpeed ?? 0)"
            popSun.text = "Sunrise: " + createDateTime(timestamp: "\(daysInfo[indexPath.row]?.sunriseTime ?? 0)") + " || Sunset: " + createDateTime(timestamp: "\(daysInfo[indexPath.row]?.sunsetTime ?? 0)")
            print(createDateTime(timestamp: "\(daysInfo[indexPath.row]?.sunriseTime ?? 0)"))
            
            
            
        }
        if tableView == tblSearchResult {
            //dayTableView.isHidden = true
            print(indexPath.row)
            
            tblSearchResult.deselectRow(at: indexPath, animated: true)
            let completion = searchResults[indexPath.row]
            print(indexPath.row)
            let searchRequest = MKLocalSearch.Request(completion: completion)
            let search = MKLocalSearch(request: searchRequest)
            search.start { (response, error) in
                print(response?.mapItems[0].name ?? "")
                let coordinate = response?.mapItems[0].placemark.coordinate
                print("3343565gfgfb",String(describing: coordinate))
                
                self.searchLocation.text = ""
                self.locationButton.titleLabel!.numberOfLines = 0
              self.locationButton.titleLabel!.adjustsFontSizeToFitWidth = true
                self.locationButton.titleLabel!.minimumScaleFactor = 0.5
                self.tblSearchResult.isHidden = true
                self.searchLocation.isHidden = true
                self.locationButton.setTitle("        " + (response?.mapItems[0].name ?? "") , for: .normal)
                self.locationButton.isHidden = false
                DispatchQueue.main.async {
                    //LiveWeatherViewController.getWeatherForecast(locValue: coordinate ?? CLLocationCoordinate2DMake(23.7418, 88.4277))
                    self.daysInfo = RequestHandler.shared.dayData
                    self.viewDidLoad()
                    self.dayTableView.reloadData()
                }
                
            }
            self.dayTableView.reloadData()
        }
        
        
    }
    
    
    
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        //tableView.deselectRow(at: indexPath, animated: true)
//        if tableView == tblSearchResult {
//            tblSearchResult.deselectRow(at: indexPath, animated: true)
//            let completion = searchResults[indexPath.row]
//            print(indexPath.row)
//            let searchRequest = MKLocalSearch.Request(completion: completion)
//            let search = MKLocalSearch(request: searchRequest)
//            search.start { (response, error) in
//                let coordinate = response?.mapItems[0].placemark.coordinate
//                print("3343565gfgfb",String(describing: coordinate))
//                //self.tblSearchResult.isHidden = true
//            }
//
//        }
//
        
        if tableView == tblSearchResult {
            
            tableView.deselectRow(at: indexPath, animated: true)
            
            let completion = searchResults[indexPath.row]
            
            let searchRequest = MKLocalSearch.Request(completion: completion)
            let search = MKLocalSearch(request: searchRequest)
            search.start { (response, error) in
                let coordinate = response?.mapItems[0].placemark.coordinate
                print("3343565gfgfb",String(describing: coordinate))
                self.tblSearchResult.isHidden = true
            }
            
            
        }
        else{
            performSegue(withIdentifier: "pop", sender: self)
        }
        
    }
    */
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        let verticalPadding: CGFloat = 8

        let maskLayer = CALayer()
        maskLayer.cornerRadius = 10    //if you want round edges
        maskLayer.backgroundColor = UIColor.black.cgColor
        maskLayer.frame = CGRect(x: cell.bounds.origin.x, y: cell.bounds.origin.y, width: cell.bounds.width, height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
        cell.layer.mask = maskLayer
    }
    
    
}


extension DaysForecastViewController: MKLocalSearchCompleterDelegate {
    
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        searchResults = completer.results
        print(searchResults)
        self.tblSearchResult.reloadData()
    }
    
    func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error) {
        // handle error
        print("Error : \(error.localizedDescription)")
    }
}
extension DaysForecastViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        self.view.endEditing(true)
        return true
    }
}

