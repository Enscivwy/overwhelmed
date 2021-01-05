//
//  SecondOnboardingView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/30/20.
//

import SwiftUI

struct SecondOnboardingView: View {
    var titleName: String = "Stress Tracking"
    var subtitleText: String = "Track your stress levels throughout the day with measurements taken every 10 minutes.\nGet an estimate of the energy you have based on your sleep and your day.\n\nAll data displayed is personalized and unique to you!"
    var imageName: String = "StressOnboard"
    var btnName: String = "Next"
    
    var body: some View {
        ZStack{
            Color("SmokyBlack").ignoresSafeArea()
            VStack{
                ModularContent(titleName: titleName, subtitleText: subtitleText, imageName: imageName)
                    
                    NavigationLink(destination: ThirdOnboardingView(),
                                   label: {OnboardingButtonTwo(buttonText: btnName)})
                }
            }// parent vstack
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .navigationBarHidden(true)
    }
}

struct SecondOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        SecondOnboardingView()
    }
}
