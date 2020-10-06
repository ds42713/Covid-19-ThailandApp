//
//  Covid19View.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 30/9/2563 BE.
//

import SwiftUI

struct Covid19View: View {
    var CovidDataView:Datum
    var body: some View {
        VStack(alignment: .leading) {
            VStack{
                Text("ติดเชื้อสะสม : \(CovidDataView.confirmed)").font(.headline)
                Text("( + \(CovidDataView.newConfirmed) )").font(.subheadline)
            }.frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.99, green: 0.47, blue: 0.66, opacity: 1.00)).cornerRadius(10).padding()
           
            VStack{
                Text("หายแล้ว : \(CovidDataView.recovered)").font(.headline)
                Text("( + \(CovidDataView.newRecovered) )").font(.subheadline)
                Text("รักษาอยู่ใน รพ. : \(CovidDataView.hospitalized)").padding(5)
            }.frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.33, green: 0.94, blue: 0.77, opacity: 1.00)).cornerRadius(10).padding()
            
            VStack{
                Text("เสียชีวิต : \(CovidDataView.deaths)").font(.headline)
                Text("( + \(CovidDataView.newDeaths) )").font(.subheadline)
            }.frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.70, green: 0.75, blue: 0.76, opacity: 1.00)).cornerRadius(10).padding()
            
            Spacer()
            
        }
    }
}

