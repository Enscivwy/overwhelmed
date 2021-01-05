//
//  HKConnection.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/29/20.
//

import Foundation
import HealthKit

class HKConnection{
    var healthStore: HKHealthStore?
    init(){
        healthStore = HKHealthStore()
    }
    
    
    func reuqestConnection(){
        let permReq: Set? = [HKObjectType.quantityType(forIdentifier: .heartRateVariabilitySDNN)!,
                            HKObjectType.quantityType(forIdentifier: .restingHeartRate)!,
                            HKObjectType.quantityType(forIdentifier: .heartRate)!,
                            HKObjectType.quantityType(forIdentifier: .bodyMassIndex)!]
        if let healthStore = healthStore{
            healthStore.requestAuthorization(toShare: nil, read: permReq){ (success, error) in
                if(!success){
                    //redirect to error view to try again.
                }
            }
        }
    }//func ends
}//class ends
