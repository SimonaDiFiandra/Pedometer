//
//  pedometer.swift
//  Contapassi
//
//  Created by Simona Di Fiandra on 16/11/22.
//

import SwiftUI
import CoreMotion

struct Pedometer: View {
    @State var Pedometer: CMPedometer = CMPedometer()
    @State var Steps: Int?
    @ObservedObject var distance = HealthData()
    @State var Percentage = 0
    @State var Achievement = 6000
    
    var body: some View {
        ZStack
        {///ztack fa visualizzare gli oggetti in sovrapposizione
            Circle().stroke()///rende sottile i contorni del cerchio
                .foregroundColor(.gray)///decide il colore delle linee del cerchio
                .frame(width: 300)
            
            Circle().stroke()
                .foregroundColor(.gray)
                .frame(width: 240)
            VStack
            {///vstach fa visualizzare tutti gli oggetti in lista
                Text("\(Percentage)%")
                    .font(.title2)
                    .offset(y: 15)
                
                Text("\(Steps ?? 0)")
                    .font(.system(size: 60))
                    .fontWeight(.semibold)
                    .padding(.top)
                
                Text(verbatim: "ACHIEVEMENT: \(Achievement)")
                    .fontWeight(.medium)
                
                Text(Date.now, format: .dateTime.weekday(.wide))
                    .padding(.top)
                    .fontWeight(.light)
                Text(Date.now, format: .dateTime.month(.wide).day())
                    .padding(.bottom)
                    .fontWeight(.light)
                
            }
            .frame(width: 200.0, height: 200.0)
        }
        .onAppear(){
            initializePedometer()
            updateUI(data: CMPedometerData())
        }
        
    }
    
    private var isPedometerAvailable: Bool
    {
        return CMPedometer.isPedometerEventTrackingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable()
    }
    
    private func updateUI(data: CMPedometerData)
    {
        Steps = data.numberOfSteps.intValue
        guard let pedometerDistance = data.distance
                else
        {
            return
        }
        
        var distanceInKilometers = Measurement(value: pedometerDistance.doubleValue, unit: UnitLength.meters)
        distanceInKilometers = distanceInKilometers.converted(to: .kilometers);
        
        DispatchQueue.main.async {
            distance.distance = distanceInKilometers.value
        }
            
        //print(distance)

    }
    
    private func initializePedometer()
    {
        if isPedometerAvailable
        {
            guard let startDate = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month, .day], from: Date()))
            else
            {
                return
            }
            
            Pedometer.queryPedometerData(from: startDate, to: Date())
            {
                (data,error) in
                guard let data = data, error == nil
                else
                {
                    return
                }
                
                Steps = data.numberOfSteps.intValue
                Percentage = (100*(Steps ?? 0))/Achievement
                updateUI(data: data)
                DispatchQueue.main.async {
                    distance.calories = (0.70*(distance.distance*60.0))
                }
                //print(distance)
                
            }
        }
    }
}

struct Pedometer_Previews: PreviewProvider {
    static var previews: some View {
        Pedometer(distance: HealthData())
    }
}
