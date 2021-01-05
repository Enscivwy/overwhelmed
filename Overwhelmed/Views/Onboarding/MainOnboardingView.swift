//
//  MainOnboardingView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/30/20.
//

import SwiftUI

struct MainOnboardingView: View {
    var titleName: String = "Tired? Can't Sleep?\nOverwhelmed?"
    var subtitleText: String = "Track your stress levels, gain insight on how you sleep and get important heart metrics. All from your Apple Watch!"
    var imageName: String = "HomeOnboard"
    var btnName: String = "Start"
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("SmokyBlack").ignoresSafeArea()
                VStack{
                ModularContent(titleName: titleName, subtitleText: subtitleText, imageName: imageName)
                        
                NavigationLink(destination: SecondOnboardingView(),
                               label: {OnboardingButtonTwo(buttonText: btnName)})
                    }
            }// parent vstack
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .navigationBarHidden(true)
        } //nav view ends
    }
}

struct MainOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        MainOnboardingView()
    }
}
