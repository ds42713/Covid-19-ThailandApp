//
//  Covid19View.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 25/9/2563 BE.
//

import SwiftUI

struct Covid19View: View {
    
    var body: some View {
        VStack {
            Text("วันที่ : ")
            Text("ผู้ติดเชื้อรายใหม่ : ")
            Text("ติดเชื้อสะสม : ")
            Text("รักษาหายแล้ว : ")
            Text("รักษาอยู่ใน รพ. : ")
            Text("ผู้เสียชีวิตรายใหม่ : ")
            Text("ผู้เสียชีวิตสะสม : ")
        }
    }
}

struct Covid19View_Previews: PreviewProvider {
    static var previews: some View {
        Covid19View()
    }
}
