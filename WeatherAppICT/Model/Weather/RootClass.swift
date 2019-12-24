//
//  RootClass.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on December 23, 2019
//
import Foundation

struct RootClass: Codable {

	let latitude: Double?
	let longitude: Double?
	let timezone: String?
	let currently: Currently?
	//let minutely: Minutely?
	let hourly: Hourly?
	let daily: Daily?
	//let flags: Flags?
	//let offset: Int?

	private enum CodingKeys: String, CodingKey {
		case latitude = "latitude"
		case longitude = "longitude"
		case timezone = "timezone"
		case currently = "currently"
		case minutely = "minutely"
		case hourly = "hourly"
		case daily = "daily"
		//case flags = "flags"
		//case offset = "offset"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		latitude = try values.decode(Double.self, forKey: .latitude)
		longitude = try values.decode(Double.self, forKey: .longitude)
		timezone = try values.decode(String.self, forKey: .timezone)
		currently = try values.decode(Currently.self, forKey: .currently)
		//minutely = try values.decode(Minutely.self, forKey: .minutely)
		hourly = try values.decode(Hourly.self, forKey: .hourly)
		daily = try values.decode(Daily.self, forKey: .daily)
		//flags = try values.decode(Flags.self, forKey: .flags)
		//offset = try values.decode(Int.self, forKey: .offset)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(latitude, forKey: .latitude)
		try container.encode(longitude, forKey: .longitude)
		try container.encode(timezone, forKey: .timezone)
		try container.encode(currently, forKey: .currently)
		//try container.encode(minutely, forKey: .minutely)
		try container.encode(hourly, forKey: .hourly)
		try container.encode(daily, forKey: .daily)
		//try container.encode(flags, forKey: .flags)
		//try container.encode(offset, forKey: .offset)
	}

}
