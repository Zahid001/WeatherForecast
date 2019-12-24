/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Ip : Codable {
	let status : String?
	let country : String?
	let countryCode : String?
	let region : String?
	let regionName : String?
	let city : String?
	let zip : String?
	let lat : Double?
	let lon : Double?
	let timezone : String?
	let isp : String?
	let org : String?
	let As : String?
	let query : String?

	enum CodingKeys: String, CodingKey {

		case status = "status"
		case country = "country"
		case countryCode = "countryCode"
		case region = "region"
		case regionName = "regionName"
		case city = "city"
		case zip = "zip"
		case lat = "lat"
		case lon = "lon"
		case timezone = "timezone"
		case isp = "isp"
		case org = "org"
		case As = "as"
		case query = "query"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		country = try values.decodeIfPresent(String.self, forKey: .country)
		countryCode = try values.decodeIfPresent(String.self, forKey: .countryCode)
		region = try values.decodeIfPresent(String.self, forKey: .region)
		regionName = try values.decodeIfPresent(String.self, forKey: .regionName)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		zip = try values.decodeIfPresent(String.self, forKey: .zip)
		lat = try values.decodeIfPresent(Double.self, forKey: .lat)
		lon = try values.decodeIfPresent(Double.self, forKey: .lon)
		timezone = try values.decodeIfPresent(String.self, forKey: .timezone)
		isp = try values.decodeIfPresent(String.self, forKey: .isp)
		org = try values.decodeIfPresent(String.self, forKey: .org)
		As = try values.decodeIfPresent(String.self, forKey: .As)
		query = try values.decodeIfPresent(String.self, forKey: .query)
	}

}
