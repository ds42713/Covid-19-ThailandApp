//
//  Covid19Today.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 6/10/2563 BE.
//

import SwiftUI
import Alamofire
struct Covid19Today: View {
    @State var Covid19Todayconfirmed:Int
    @State var Covid19TodaynewConfirmed:Int
    @State var CovidTodayUpdate:String
    let url = "https://covid19.th-stat.com/api/open/today"
    var body: some View {
        VStack {
       //     Text(CovidTodayUpdate)
            Text("ติดเชื้อสะสม : \(Covid19Todayconfirmed)").font(.headline)
            Text(" ( + \(Covid19TodaynewConfirmed) ) ").font(.headline)
        }.onAppear { self.feeddataToday() }
        .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.99, green: 0.47, blue: 0.66, opacity: 1.00)).cornerRadius(10).padding()
    }
    func feeddataToday()  {
        let url = "https://covid19.th-stat.com/api/open/today"
        AF.request(url, method: .get).responseJSON { (response) in
            switch response.result {
            case .success: print(response.value)
                do {
                        let result = try JSONDecoder().decode(TodayCovid19API.self, from: response.data!)
                    // self.Covid19Today.removeAll
                    self.Covid19Todayconfirmed = result.confirmed
                    self.Covid19TodaynewConfirmed = result.newConfirmed
                    self.CovidTodayUpdate = result.updateDate
                } catch{
                print(error.localizedDescription)
                        }
            case .failure(let err) : print(err.responseCode)
            }
        }
    }
}

struct Covid19Today_Previews: PreviewProvider {
    static var previews: some View {
        Covid19Today(Covid19Todayconfirmed: .bitWidth, Covid19TodaynewConfirmed: .bitWidth )
    }
}
