//
//  TodayCovid19API.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 6/10/2563 BE.
//

import Foundation
// MARK: - TodayCovid19API
struct TodayCovid19API: Codable {
    let confirmed, recovered, hospitalized, deaths: Int
    let newConfirmed, newRecovered, newHospitalized, newDeaths: Int
    let updateDate: String
    let source, devBy, severBy: String

    enum CodingKeys: String, CodingKey {
        case confirmed = "Confirmed"
        case recovered = "Recovered"
        case hospitalized = "Hospitalized"
        case deaths = "Deaths"
        case newConfirmed = "NewConfirmed"
        case newRecovered = "NewRecovered"
        case newHospitalized = "NewHospitalized"
        case newDeaths = "NewDeaths"
        case updateDate = "UpdateDate"
        case source = "Source"
        case devBy = "DevBy"
        case severBy = "SeverBy"
    }
}
