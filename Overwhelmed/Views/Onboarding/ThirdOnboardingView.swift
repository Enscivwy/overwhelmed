//
//  ThirdOnboardingView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/30/20.
//

import SwiftUI

struct ThirdOnboardingView: View {
    var titleName: String = "Sleep Tracking"
    var subtitleText: String = "Get an accurate estimate of your sleep cycles. See how long you stay in each sleep cycle, when you go to bed, wake up, and more!\n\nGet a sleep score based on your sleep parameters indicative of the quality of your sleep!"
    var imageName: String = "SleepOnboard"
    var btnName: String = "Next"
    
    var body: some View {
        ZStack{
            Color("SmokyBlack").ignoresSafeArea()
            VStack{
                ModularContent(titleName: titleName, subtitleText: subtitleText, imageName: imageName)
                    
                    NavigationLink(destination: FourthOnboardingView(),
                        label: {OnboardingButtonTwo(buttonText: btnName)})
                }
            }// parent vstack
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .navigationBarHidden(true)
    }
}

struct ThirdOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdOnboardingView()
    }
}
