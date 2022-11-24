//
//  CaloriesCounter.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 24/11/22.
//

import SwiftUI

struct CaloriesCounter: View {
    @ObservedObject var distance : HealthData
    @State var UnitMeter : String
    var body: some View {
        VStack{
            Text(String(format: "%.2f", distance.calories)).font(.system(size: 34)).padding(.bottom)
            Text("\(UnitMeter)")
        }
    }
}

struct CaloriesCounter_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesCounter(distance: HealthData(), UnitMeter: "String")
    }
}
