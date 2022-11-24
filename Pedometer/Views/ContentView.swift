//
//  ContentView.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 3
    
    var body: some View {
        TabView(selection: $selectedTab)
        {
            Mapp()
                .tabItem
            {
                Label("Map", systemImage: "mappin")
            }.tag(1)
            
            StatsView()
                .tabItem
            {
                Label("Stats", systemImage: "chart.xyaxis.line")
            }.tag(2)
            
            MainView()
                .tabItem
            {
                Label("Pedometer", systemImage: "figure.run")
            }.tag(3)
            
            TrophyView()
                .tabItem
            {
                Label("Achievements", systemImage: "trophy")
            }.tag(4)
            
            ProfileView()
                .tabItem
            {
                Label("Profile", systemImage: "person.fill")
            }.tag(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
