//
//  MainView.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 16/11/22.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var distance = HealthData()
    var body: some View {
        NavigationStack
        {
            ZStack{
                Color("Sfondo").ignoresSafeArea()
                VStack
                {
                    PedometerContainer(distance:distance)
                    ///contenitore del contapassi, kilometri e calorie
                }
            }
            .navigationTitle("Pedometro")
            ///titolo navigationstack
            .navigationBarTitleDisplayMode(.inline)
            ///mettere al centro il titolo della navigation stack
            .toolbarBackground(
                Color("colore"),for: .navigationBar)
            ///mettere il colore degli assets nella toolbar
            .toolbarBackground(.visible, for: .navigationBar)
            ///mettere la toolbar in piccolo
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
