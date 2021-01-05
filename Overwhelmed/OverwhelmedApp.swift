//
//  OverwhelmedApp.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/28/20.
//

import SwiftUI

@main
struct OverwhelmedApp: App {
    @AppStorage("onboardingCheck") var onboardingCheck:Bool = false
    
    var body: some Scene {
        WindowGroup {
            if !onboardingCheck{
                MainOnboardingView()
            }else{
                HomeView()
            }
        }
    }
}
