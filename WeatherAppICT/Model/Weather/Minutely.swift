//
//  Minutely.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on December 23, 2019
//
import Foundation

struct Minutely: Codable {

	let summary: String?
	let icon: String?
	//let data: [DataForMinutely?]

	private enum CodingKeys: String, CodingKey {
		case summary = "summary"
		case icon = "icon"
		case data = "data"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		summary = try values.decode(String.self, forKey: .summary)
		icon = try values.decode(String.self, forKey: .icon)
		//data = try values.decode([DataForMinutely].self, forKey: .data)
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(summary, forKey: .summary)
		try container.encode(icon, forKey: .icon)
		//try container.encode(data, forKey: .data)
	}

}
