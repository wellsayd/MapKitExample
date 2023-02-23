// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let parkData = try? JSONDecoder().decode(ParkData.self, from: jsonData)

import Foundation

// MARK: - ParkData
struct ParkData: Codable {
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let getParks: GetParks
}

// MARK: - GetParks
struct GetParks: Codable {
    let facilities: [Facility]
}

// MARK: - Facility
struct Facility: Codable {
    let id: Int
    let address: String
    let amenities: [Int]
    let attachments: [String]?
    let googlePlacesID, hours: String?
    let isAdopted, isAdoptionEligable: Bool
    let latlng: [String]
    let isRental: Bool
    let mappedAmenities: [String]?
    let notes: String?
    let title: String
    let type: TypeEnum
    let url: String?
    let zip: String

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case address, amenities, attachments
        case googlePlacesID = "googlePlacesId"
        case hours, isAdopted, isAdoptionEligable, latlng, isRental, mappedAmenities, notes, title, type, url, zip
    }
}

enum TypeEnum: String, Codable {
    case park = "Park"
    case recCen = "RecCen"
}
