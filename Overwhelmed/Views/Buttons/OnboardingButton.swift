//
//  OnboardingButton.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/30/20.
//

import SwiftUI

struct OnboardingButton: View {
    var buttonText: String
    
    @AppStorage("onboardingCheck") var onboardingCheck: Bool?
    
    var body: some View {
        Button(action: {onboardingCheck=true},
            label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text(buttonText)
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                }
            })
            
    }
}

struct OnboardingButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButton(buttonText: "Loading")
    }
}
