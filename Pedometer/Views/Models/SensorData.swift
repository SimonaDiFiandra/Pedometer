//
//  ContentView.swift
//  ContapassiSensore
//
//  Created by Simona Di Fiandra on 18/11/22.
//

import SwiftUI
import CoreMotion

@MainActor
class SensorData : ObservableObject
{
    
    @Published var Pedometer: CMPedometer = CMPedometer()
    @Published var Steps: Int?
    
    
    var isPedometerAvailable: Bool
    {
        return CMPedometer.isPedometerEventTrackingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable()
    }
    
    func initializePedometer()
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
                
                self.Steps = data.numberOfSteps.intValue
            }
        }
    }
    
}

