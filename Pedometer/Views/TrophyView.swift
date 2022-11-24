//
//  TrophyView.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 22/11/22.
//

import SwiftUI

struct TrophyView: View {
    var body: some View {
        NavigationStack
        {
            Image(systemName: "trophy.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .foregroundColor(.yellow)
            
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

struct TrophyView_Previews: PreviewProvider {
    static var previews: some View {
        TrophyView()
    }
}
