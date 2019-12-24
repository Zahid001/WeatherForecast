//
//  Flags.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on December 23, 2019
//
import Foundation

//struct Flags: Codable {
//
//	let sources: [String]
//	let meteoalarm-license: String
//	let nearest-station: Double
//	let units: String
//
//	private enum CodingKeys: String, CodingKey {
//		case sources = "sources"
//		case meteoalarm_license = "meteoalarm_license"
//		case neareststation = "nearest-station"
//		case units = "units"
//	}
//
//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		sources = try values.decode([String].self, forKey: .sources)
//		meteoalarm-license = try values.decode(String.self, forKey: .meteoalarm-license)
//		nearest-station = try values.decode(Double.self, forKey: .nearest-station)
//		units = try values.decode(String.self, forKey: .units)
//	}
//
//	func encode(to encoder: Encoder) throws {
//		var container = encoder.container(keyedBy: CodingKeys.self)
//		try container.encode(sources, forKey: .sources)
//		try container.encode(meteoalarm-license, forKey: .meteoalarm-license)
//		try container.encode(nearest-station, forKey: .nearest-station)
//		try container.encode(units, forKey: .units)
//	}
//
//}
