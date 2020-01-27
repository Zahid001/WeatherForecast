//
//  DaysTableViewCell.swift
//  WeatherAppICT
//
//  Created by Md Zahidul Islam Mazumder on 5/1/20.
//  Copyright © 2020 Md Zahidul Islam Mazumder. All rights reserved.
//

import UIKit

class DaysTableViewCell: UITableViewCell {

    
    @IBOutlet weak var dayDate: UILabel!
    
    @IBOutlet weak var forecastImage: UIImageView!
    
    @IBOutlet weak var forecastProbability: UILabel!
    
    @IBOutlet weak var tempIcon: UIImageView!
    
    @IBOutlet weak var tempRange: UILabel!
    
    @IBOutlet weak var tempDescription: UILabel!
    
    @IBOutlet weak var humidity: UILabel!
    
    
    @IBOutlet weak var precipitation: UILabel!
    
    @IBOutlet weak var chanceRain: UILabel!
    
    @IBOutlet weak var windChil: UILabel!
    
    @IBOutlet weak var daysCellBtnAction: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
