//
//  FourthOnboardingView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/30/20.
//

import SwiftUI

struct FourthOnboardingView: View {
    var titleName: String = "By continuing\nYou agree that:"
    var subtitleText: String = "1. This app is not to be used as substitute for professional health care.\n2. This app is for informational and general Wellbeing purposes only.\n3. You are at least 16 years of age or are using this app under adult supervision."
    var imageName: String = "SecOnboard"
    var btnName: String = "Next"
    @AppStorage("onboardingCheck") var onboardingCheck: Bool?
    var body: some View {
        ZStack{
            Color("SmokyBlack").ignoresSafeArea()
            VStack{
                ModularContent(titleName: titleName, subtitleText: subtitleText, imageName: imageName)
                    
                    NavigationLink(destination: FinalFormView(),
                        label: {OnboardingButtonTwo(buttonText: btnName)})
                }
            }// parent vstack
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .navigationBarHidden(true)
    }
}

struct FourthOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        FourthOnboardingView()
    }
}
