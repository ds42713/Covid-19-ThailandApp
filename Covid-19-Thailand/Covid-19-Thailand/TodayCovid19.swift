//
//  TodayCovid19.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 5/10/2563 BE.
//

import SwiftUI
import Alamofire
struct TodayCovid19: View {
    
    @State var Covid19Today:[Covid19TodayAPI] = []

    var body: some View {
        VStack {

            ForEach (self.Covid19Today , id: \.updateDate) { item in
                Text("ติดเชื้อสะสม : \(item.confirmed)").font(.headline)
                Text(" ( + \(item.newConfirmed)").font(.headline)
            }


        }.onAppear { self.feeddataToday() }
        .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.99, green: 0.47, blue: 0.66, opacity: 1.00)).cornerRadius(10).padding()
    }
    func feeddataToday()  {
        let url = "https://covid19.th-stat.com/api/open/today"
        AF.request(url, method: .get).responseJSON { (response) in
            switch response.result {
            case .success: print(response.value)
                do {
                        let result = try JSONDecoder().decode(CovidAPIToday.self, from: response.data!)
                        self.Covid19Today.removeAll()
                        self.Covid19Today = result.data
                } catch{
                print(error.localizedDescription)
                        }
            case .failure(let err) : print(err.responseCode)
            }
        }
    }
    
}

struct TodayCovid19_Previews: PreviewProvider {
    static var previews: some View {
        TodayCovid19()
    }
}
