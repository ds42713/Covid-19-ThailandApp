//
//  Covid19TodayAPI.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 6/10/2563 BE.
//

import Foundation
// MARK: - Covid19TodayAPI
struct CovidAPIToday: Codable {
   
    let updateDate: String
    let source, devBy, severBy: String
    let data:[Covid19TodayAPI]
    
    enum CodingKeys: String, CodingKey {
       
        case updateDate = "UpdateDate"
        case source = "Source"
        case devBy = "DevBy"
        case severBy = "SeverBy"
        case data = "Data"
    }
}



struct Covid19TodayAPI: Codable {
    
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
