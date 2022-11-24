//
//  Map.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 24/11/22.
//
import SwiftUI
// 1.
import MapKit

struct Mapp: View {
    // 2.
    @State private var region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: 40.8517746,
                    longitude: 14.2681244),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.5,
                    longitudeDelta: 0.5)
                )

    var body: some View {
        
        NavigationStack {
            
            Map(coordinateRegion: $region)
                .ignoresSafeArea(.all, edges: [.horizontal, .top])
            
                .navigationTitle("Map")
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
struct Mapp_Previews: PreviewProvider {
    static var previews: some View {
        Mapp()
    }
    
}
