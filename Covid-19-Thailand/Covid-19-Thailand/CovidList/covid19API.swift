//
//  covid19API.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 25/9/2563 BE.
//

import Foundation
// MARK: - Covid19API
struct Covid19API: Codable {
    let updateDate: String
    let source, devBy, severBy: String
    let data: [Datum]

    enum CodingKeys: String, CodingKey {
        case updateDate = "UpdateDate"
        case source = "Source"
        case devBy = "DevBy"
        case severBy = "SeverBy"
        case data = "Data"
    }
}

// MARK: - Datum
struct Datum: Codable {
    let date: String
    let newConfirmed, newRecovered, newHospitalized, newDeaths: Int
    let confirmed, recovered, hospitalized, deaths: Int

    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case newConfirmed = "NewConfirmed"
        case newRecovered = "NewRecovered"
        case newHospitalized = "NewHospitalized"
        case newDeaths = "NewDeaths"
        case confirmed = "Confirmed"
        case recovered = "Recovered"
        case hospitalized = "Hospitalized"
        case deaths = "Deaths"
    }
}
