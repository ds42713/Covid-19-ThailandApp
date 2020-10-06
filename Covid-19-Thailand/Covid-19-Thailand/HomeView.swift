//
//  HomeView.swift
//  Covid-19-Thailand
//
//  Created by Pongsakorn Praditkanok on 4/10/2563 BE.
//

import SwiftUI
import Alamofire
struct HomeView: View {

    var body: some View {
        TabView {
            TodayCovid19().tabItem { Image(systemName: "house") }.tag(1)
            ContentView().tabItem { Image(systemName: "list.dash" ) }.tag(2)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
