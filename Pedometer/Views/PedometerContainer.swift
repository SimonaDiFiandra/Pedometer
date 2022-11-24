//
//  PedometerContainer.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 16/11/22.
//

import SwiftUI

struct PedometerContainer: View {
    
    @ObservedObject var distance: HealthData
    
    @State var Calories = 0.1
    
    var body: some View {
        ZStack
        {///ztack fa visualizzare gli oggetti in sovrapposizione
            Rectangle()
                .cornerRadius(7.0)
                .colorInvert()
                .frame(height: 450.0).padding()
            
            VStack
            {///vstach fa visualizzare tutti gli oggetti in lista
                Image(systemName: "square.and.arrow.up").foregroundColor(Color("colore")).offset(x:140, y:15)
                ///decidi le coordinate a mano (molto sconsigliato ma funziona)
                    .font(.system(size: 25))
                
                Pedometer(distance: distance)
                
                HStack
                {///Hstach fa visualizzare tutti gli oggetti di fianco
                    SecondCounter(distance: distance, UnitMeter: "KILOMETERS")
                    Spacer()
                    CaloriesCounter(distance: distance,UnitMeter: "CALORIES")
                }
                .frame(width: 250.0)
            }
            .frame(height: 450.0)
        }
    }
    
    
    
}
/*
 struct PedometerContainer_Previews: PreviewProvider {
 static var previews: some View {
 ZStack{
 Color(.gray).ignoresSafeArea()
 PedometerContainer(Distance: .constant(0))
 }
 }
 }
 */
