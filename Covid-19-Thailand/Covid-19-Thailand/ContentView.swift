//
//  ContentView.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 25/9/2563 BE.
//

import SwiftUI
import Alamofire
struct ContentView: View {
    @State var Covid19data:[Datum] = []
    var body: some View {
        NavigationView {
            List {
                ForEach(self.Covid19data, id: \.date){ item in
                    NavigationLink(destination:
                        VStack {
                            Text("วันที่ : \(item.date)")
                            Text("ผู้ติดเชื้อรายใหม่ : \(item.newConfirmed)")
                            Text("ติดเชื้อสะสม :  \(item.confirmed)")
                            Text("รักษาอยู่ใน รพ. :  \(item.hospitalized)")
                            Text("รักษาหายแล้วรายใหม่ :  \(item.newRecovered)")
                            Text("รักษาหายแล้ว :  \(item.recovered)")
                            Text("ผู้เสียชีวิตรายใหม่ :  \(item.newDeaths)")
                            Text("ผู้เสียชีวิตสะสม : \(item.deaths)")
                    } ) {
                Text("Date:  \(item.date)")
            }
                }
            }
            .navigationBarTitle("Covid-19 Thailand")
            .onAppear { self.feeddata() }
        }
    }

    func feeddata()  {
        let url = "https://covid19.th-stat.com/api/open/timeline"
        AF.request(url, method: .get).responseJSON { (response) in
            switch response.result {
            case .success: print(response.value)
            do {
                let result = try JSONDecoder().decode(Covid19API.self, from: response.data!)
                self.Covid19data.removeAll()
                self.Covid19data = result.data
            } catch{
                print(error.localizedDescription)
                }
            case .failure(let err) : print(err.responseCode)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
