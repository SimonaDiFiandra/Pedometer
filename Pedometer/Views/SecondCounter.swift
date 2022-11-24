//
//  SecondCounter.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 16/11/22.
//

import SwiftUI

struct SecondCounter: View {
    @ObservedObject var distance = HealthData()
    @State var UnitMeter : String
    var body: some View {
        VStack{
            Text(String(format: "%.2f", distance.distance)).font(.system(size: 34)).padding(.bottom)
            Text("\(UnitMeter)")
        }
    }
}

struct SecondCounter_Previews: PreviewProvider {
    static var previews: some View {
        SecondCounter(distance: HealthData(), UnitMeter: "KILOMETERS")
    }
}
