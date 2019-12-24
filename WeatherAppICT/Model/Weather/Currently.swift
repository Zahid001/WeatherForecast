//
//  Currently.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on December 23, 2019
//
import Foundation

struct Currently: Codable {

	let time: Int?
	let summary: String?
	let icon: String?
	//let nearestStormDistance: Int?
	//let nearestStormBearing: Int?
	let precipIntensity: Double?
	let precipProbability: Double?
	let temperature: Double?
	let apparentTemperature: Double?
	let dewPoint: Double?
	let humidity: Double?
	let pressure: Double?
	let windSpeed: Double?
	let windGust: Double?
	let windBearing: Int?
	let cloudCover: Double?
	let uvIndex: Int?
	let visibility: Double?
	let ozone: Double?

	 enum CodingKeys: String, CodingKey {
		case time = "time"
		case summary = "summary"
		case icon = "icon"
		case nearestStormDistance = "nearestStormDistance"
		case nearestStormBearing = "nearestStormBearing"
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
		case visibility = "visibility"
		case ozone = "ozone"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		time = try values.decode(Int.self, forKey: .time)
		summary = try values.decode(String.self, forKey: .summary)
		icon = try values.decode(String.self, forKey: .icon)
		//nearestStormDistance = try values.decode(Int?.self, forKey: .nearestStormDistance)
		//nearestStormBearing = try values.decode(Int?.self, forKey: .nearestStormBearing)
		precipIntensity = try values.decode(Double.self, forKey: .precipIntensity)
		precipProbability = try values.decode(Double.self, forKey: .precipProbability)
		temperature = try values.decode(Double.self, forKey: .temperature)
		apparentTemperature = try values.decode(Double.self, forKey: .apparentTemperature)
		dewPoint = try values.decode(Double.self, forKey: .dewPoint)
		humidity = try values.decode(Double.self, forKey: .humidity)
		pressure = try values.decode(Double.self, forKey: .pressure)
		windSpeed = try values.decode(Double.self, forKey: .windSpeed)
		windGust = try values.decode(Double.self, forKey: .windGust)
		windBearing = try values.decode(Int.self, forKey: .windBearing)
		cloudCover = try values.decode(Double.self, forKey: .cloudCover)
		uvIndex = try values.decode(Int.self, forKey: .uvIndex)
		visibility = try values.decode(Double.self, forKey: .visibility)
		ozone = try values.decode(Double.self, forKey: .ozone)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(time, forKey: .time)
		try container.encode(summary, forKey: .summary)
		try container.encode(icon, forKey: .icon)
		//try container.encode(nearestStormDistance, forKey: .nearestStormDistance)
		//try container.encode(nearestStormBearing, forKey: .nearestStormBearing)
		try container.encode(precipIntensity, forKey: .precipIntensity)
		try container.encode(precipProbability, forKey: .precipProbability)
		try container.encode(temperature, forKey: .temperature)
		try container.encode(apparentTemperature, forKey: .apparentTemperature)
		try container.encode(dewPoint, forKey: .dewPoint)
		try container.encode(humidity, forKey: .humidity)
		try container.encode(pressure, forKey: .pressure)
		try container.encode(windSpeed, forKey: .windSpeed)
		try container.encode(windGust, forKey: .windGust)
		try container.encode(windBearing, forKey: .windBearing)
		try container.encode(cloudCover, forKey: .cloudCover)
		try container.encode(uvIndex, forKey: .uvIndex)
		try container.encode(visibility, forKey: .visibility)
		try container.encode(ozone, forKey: .ozone)
	}

}
