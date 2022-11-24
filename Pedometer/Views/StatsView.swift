//
//  StatsView.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 24/11/22.
//

import SwiftUI

struct StatsView: View {
    var body: some View {
        NavigationStack
        {
            Image(systemName: "chart.xyaxis.line")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .foregroundColor(.black)
            
                .navigationTitle("Achievements")
                ///titolo navigationstack
                .navigationBarTitleDisplayMode(.inline)
                ///mettere al centro il titolo della navigation stack
                .toolbarBackground(
                    Color("colore"),for: .navigationBar)
                ///mettere il colore degli assets nella toolbar
                .toolbarBackground(.visible, for: .navigationBar)
                ///mettere la toolbar in piccolo
                .padding()
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
