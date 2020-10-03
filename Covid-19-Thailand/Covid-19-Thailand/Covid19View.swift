//
//  Covid19View.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 30/9/2563 BE.
//

import SwiftUI

struct Covid19View: View {
    var item:Datum
    var body: some View {
        VStack(alignment: .leading) {

            VStack{
                Text("ติดเชื้อสะสม : \(item.confirmed)").font(.headline)
                Text("( + \(item.newConfirmed) )").font(.subheadline)
            }.frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.99, green: 0.47, blue: 0.66, opacity: 1.00)).cornerRadius(10).padding()
           
            VStack{
                Text("หายแล้ว : \(item.recovered)").font(.headline)
                Text("( + \(item.newRecovered) )").font(.subheadline)
                Text("รักษาอยู่ใน รพ. : \(item.hospitalized)").padding(5)
            }.frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.33, green: 0.94, blue: 0.77, opacity: 1.00)).cornerRadius(10).padding()
            
            VStack{
                Text("เสียชีวิต : \(item.deaths)").font(.headline)
                Text("( + \(item.newDeaths) )").font(.subheadline)
            }.frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color(red: 0.70, green: 0.75, blue: 0.76, opacity: 1.00)).cornerRadius(10).padding()
            
            Spacer()
            
        }
    }
}

