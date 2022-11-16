//
//  ContentView.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack
        {
            VStack
            {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
                .navigationTitle("Pedometro")
            
                .navigationBarTitleDisplayMode(.inline)
            
                .toolbarBackground(
                                Color("colore"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
