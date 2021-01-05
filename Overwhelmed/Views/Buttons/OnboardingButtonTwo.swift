//
//  OnboardingButtonTwo.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/31/20.
//

import SwiftUI

struct OnboardingButtonTwo: View {
    var buttonText: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(buttonText)
                .foregroundColor(.black)
                .font(.system(size: 20))
                .fontWeight(.semibold)
        }
        .padding(.bottom, 10)
    }
}

struct OnboardingButtonTwo_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButtonTwo(buttonText: "loading")
    }
}
