/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation

struct DataForHourly : Codable {
	let time : Int?
	let summary : String?
	let icon : String?
	let precipIntensity : Double?
	let precipProbability : Double?
	let temperature : Double?
	let apparentTemperature : Double?
	let dewPoint : Double?
	let humidity : Double?
	let pressure : Double?
	let windSpeed : Double?
	let windGust : Double?
	let windBearing : Int?
	let cloudCover : Double?
	let uvIndex : Int?
	//let visibility : Int?
	let ozone : Double?

	enum CodingKeys: String, CodingKey {

		case time = "time"
		case summary = "summary"
		case icon = "icon"
		case precipIntensity = "precipIntensity"
		case precipProbability = "precipProbability"
		case temperature = "temperature"
		case apparentTemperature = "apparentTemperature"
		case dewPoint = "dewPoint"
		case humidity = "humidity"
		case pressure = "pressure"
		case windSpeed = "windSpeed"
		case windGust = "windGust"
		case windBearing = "windBearing"
		case cloudCover = "cloudCover"
		case uvIndex = "uvIndex"
		//case visibility = "visibility"
		case ozone = "ozone"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		time = try values.decodeIfPresent(Int.self, forKey: .time)
		summary = try values.decodeIfPresent(String.self, forKey: .summary)
		icon = try values.decodeIfPresent(String.self, forKey: .icon)
		precipIntensity = try values.decodeIfPresent(Double.self, forKey: .precipIntensity)
		precipProbability = try values.decodeIfPresent(Double.self, forKey: .precipProbability)
		temperature = try values.decodeIfPresent(Double.self, forKey: .temperature)
		apparentTemperature = try values.decodeIfPresent(Double.self, forKey: .apparentTemperature)
		dewPoint = try values.decodeIfPresent(Double.self, forKey: .dewPoint)
		humidity = try values.decodeIfPresent(Double.self, forKey: .humidity)
		pressure = try values.decodeIfPresent(Double.self, forKey: .pressure)
		windSpeed = try values.decodeIfPresent(Double.self, forKey: .windSpeed)
		windGust = try values.decodeIfPresent(Double.self, forKey: .windGust)
		windBearing = try values.decodeIfPresent(Int.self, forKey: .windBearing)
		cloudCover = try values.decodeIfPresent(Double.self, forKey: .cloudCover)
		uvIndex = try values.decodeIfPresent(Int.self, forKey: .uvIndex)
		//visibility = try values.decodeIfPresent(Int.self, forKey: .visibility)
		ozone = try values.decodeIfPresent(Double.self, forKey: .ozone)
	}

}
