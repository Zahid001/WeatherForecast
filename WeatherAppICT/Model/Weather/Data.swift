//
//  Data.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on December 23, 2019
//
import Foundation

struct Data: Codable {

	let time: Int?
	let summary: String?
	let icon: String?
	let sunriseTime: Int?
	let sunsetTime: Int?
	let moonPhase: Double?
	let precipIntensity: Double?
	let precipIntensityMax: Double?
	let precipIntensityMaxTime: Double?
	let precipProbability: Double?
	//let precipType: String?
	let temperatureHigh: Double?
	let temperatureHighTime: Int?
	let temperatureLow: Double?
	let temperatureLowTime: Int?
	let apparentTemperatureHigh: Double?
	let apparentTemperatureHighTime: Int?
	let apparentTemperatureLow: Double?
	let apparentTemperatureLowTime: Int?
	let dewPoint: Double?
	let humidity: Double?
	let pressure: Double?
	let windSpeed: Double?
	let windGust: Double?
	let windGustTime: Int?
	let windBearing: Int?
	let cloudCover: Double?
	let uvIndex: Int?
	let uvIndexTime: Int?
	let visibility: Double?
	let ozone: Double?
	let temperatureMin: Double?
	let temperatureMinTime: Int?
	let temperatureMax: Double?
	let temperatureMaxTime: Int?
	let apparentTemperatureMin: Double?
	let apparentTemperatureMinTime: Int?
	let apparentTemperatureMax: Double?
	let apparentTemperatureMaxTime: Int?

	 enum CodingKeys: String, CodingKey {
		case time = "time"
		case summary = "summary"
		case icon = "icon"
		case sunriseTime = "sunriseTime"
		case sunsetTime = "sunsetTime"
		case moonPhase = "moonPhase"
		case precipIntensity = "precipIntensity"
		case precipIntensityMax = "precipIntensityMax"
		case precipIntensityMaxTime = "precipIntensityMaxTime"
		case precipProbability = "precipProbability"
		case precipType = "precipType"
		case temperatureHigh = "temperatureHigh"
		case temperatureHighTime = "temperatureHighTime"
		case temperatureLow = "temperatureLow"
		case temperatureLowTime = "temperatureLowTime"
		case apparentTemperatureHigh = "apparentTemperatureHigh"
		case apparentTemperatureHighTime = "apparentTemperatureHighTime"
		case apparentTemperatureLow = "apparentTemperatureLow"
		case apparentTemperatureLowTime = "apparentTemperatureLowTime"
		case dewPoint = "dewPoint"
		case humidity = "humidity"
		case pressure = "pressure"
		case windSpeed = "windSpeed"
		case windGust = "windGust"
		case windGustTime = "windGustTime"
		case windBearing = "windBearing"
		case cloudCover = "cloudCover"
		case uvIndex = "uvIndex"
		case uvIndexTime = "uvIndexTime"
		case visibility = "visibility"
		case ozone = "ozone"
		case temperatureMin = "temperatureMin"
		case temperatureMinTime = "temperatureMinTime"
		case temperatureMax = "temperatureMax"
		case temperatureMaxTime = "temperatureMaxTime"
		case apparentTemperatureMin = "apparentTemperatureMin"
		case apparentTemperatureMinTime = "apparentTemperatureMinTime"
		case apparentTemperatureMax = "apparentTemperatureMax"
		case apparentTemperatureMaxTime = "apparentTemperatureMaxTime"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		time = try values.decode(Int.self, forKey: .time)
		summary = try values.decode(String.self, forKey: .summary)
		icon = try values.decode(String.self, forKey: .icon)
		sunriseTime = try values.decode(Int.self, forKey: .sunriseTime)
		sunsetTime = try values.decode(Int.self, forKey: .sunsetTime)
		moonPhase = try values.decode(Double.self, forKey: .moonPhase)
		precipIntensity = try values.decode(Double.self, forKey: .precipIntensity)
		precipIntensityMax = try values.decode(Double.self, forKey: .precipIntensityMax)
		precipIntensityMaxTime = try values.decode(Double.self, forKey: .precipIntensityMaxTime)
		precipProbability = try values.decode(Double.self, forKey: .precipProbability)
		//precipType = try values.decode(String?.self, forKey: .precipType)
		temperatureHigh = try values.decode(Double.self, forKey: .temperatureHigh)
		temperatureHighTime = try values.decode(Int.self, forKey: .temperatureHighTime)
		temperatureLow = try values.decode(Double.self, forKey: .temperatureLow)
		temperatureLowTime = try values.decode(Int.self, forKey: .temperatureLowTime)
		apparentTemperatureHigh = try values.decode(Double.self, forKey: .apparentTemperatureHigh)
		apparentTemperatureHighTime = try values.decode(Int.self, forKey: .apparentTemperatureHighTime)
		apparentTemperatureLow = try values.decode(Double.self, forKey: .apparentTemperatureLow)
		apparentTemperatureLowTime = try values.decode(Int.self, forKey: .apparentTemperatureLowTime)
		dewPoint = try values.decode(Double.self, forKey: .dewPoint)
		humidity = try values.decode(Double.self, forKey: .humidity)
		pressure = try values.decode(Double.self, forKey: .pressure)
		windSpeed = try values.decode(Double.self, forKey: .windSpeed)
		windGust = try values.decode(Double.self, forKey: .windGust)
		windGustTime = try values.decode(Int.self, forKey: .windGustTime)
		windBearing = try values.decode(Int.self, forKey: .windBearing)
		cloudCover = try values.decode(Double.self, forKey: .cloudCover)
		uvIndex = try values.decode(Int.self, forKey: .uvIndex)
		uvIndexTime = try values.decode(Int.self, forKey: .uvIndexTime)
		visibility = try values.decode(Double.self, forKey: .visibility)
		ozone = try values.decode(Double.self, forKey: .ozone)
		temperatureMin = try values.decode(Double.self, forKey: .temperatureMin)
		temperatureMinTime = try values.decode(Int.self, forKey: .temperatureMinTime)
		temperatureMax = try values.decode(Double.self, forKey: .temperatureMax)
		temperatureMaxTime = try values.decode(Int.self, forKey: .temperatureMaxTime)
		apparentTemperatureMin = try values.decode(Double.self, forKey: .apparentTemperatureMin)
		apparentTemperatureMinTime = try values.decode(Int.self, forKey: .apparentTemperatureMinTime)
		apparentTemperatureMax = try values.decode(Double.self, forKey: .apparentTemperatureMax)
		apparentTemperatureMaxTime = try values.decode(Int.self, forKey: .apparentTemperatureMaxTime)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(time, forKey: .time)
		try container.encode(summary, forKey: .summary)
		try container.encode(icon, forKey: .icon)
		try container.encode(sunriseTime, forKey: .sunriseTime)
		try container.encode(sunsetTime, forKey: .sunsetTime)
		try container.encode(moonPhase, forKey: .moonPhase)
		try container.encode(precipIntensity, forKey: .precipIntensity)
		try container.encode(precipIntensityMax, forKey: .precipIntensityMax)
		try container.encode(precipIntensityMaxTime, forKey: .precipIntensityMaxTime)
		try container.encode(precipProbability, forKey: .precipProbability)
		//try container.encode(precipType, forKey: .precipType)
		try container.encode(temperatureHigh, forKey: .temperatureHigh)
		try container.encode(temperatureHighTime, forKey: .temperatureHighTime)
		try container.encode(temperatureLow, forKey: .temperatureLow)
		try container.encode(temperatureLowTime, forKey: .temperatureLowTime)
		try container.encode(apparentTemperatureHigh, forKey: .apparentTemperatureHigh)
		try container.encode(apparentTemperatureHighTime, forKey: .apparentTemperatureHighTime)
		try container.encode(apparentTemperatureLow, forKey: .apparentTemperatureLow)
		try container.encode(apparentTemperatureLowTime, forKey: .apparentTemperatureLowTime)
		try container.encode(dewPoint, forKey: .dewPoint)
		try container.encode(humidity, forKey: .humidity)
		try container.encode(pressure, forKey: .pressure)
		try container.encode(windSpeed, forKey: .windSpeed)
		try container.encode(windGust, forKey: .windGust)
		try container.encode(windGustTime, forKey: .windGustTime)
		try container.encode(windBearing, forKey: .windBearing)
		try container.encode(cloudCover, forKey: .cloudCover)
		try container.encode(uvIndex, forKey: .uvIndex)
		try container.encode(uvIndexTime, forKey: .uvIndexTime)
		try container.encode(visibility, forKey: .visibility)
		try container.encode(ozone, forKey: .ozone)
		try container.encode(temperatureMin, forKey: .temperatureMin)
		try container.encode(temperatureMinTime, forKey: .temperatureMinTime)
		try container.encode(temperatureMax, forKey: .temperatureMax)
		try container.encode(temperatureMaxTime, forKey: .temperatureMaxTime)
		try container.encode(apparentTemperatureMin, forKey: .apparentTemperatureMin)
		try container.encode(apparentTemperatureMinTime, forKey: .apparentTemperatureMinTime)
		try container.encode(apparentTemperatureMax, forKey: .apparentTemperatureMax)
		try container.encode(apparentTemperatureMaxTime, forKey: .apparentTemperatureMaxTime)
	}

}
