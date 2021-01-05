//
//  HeaderView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 1/4/21.
//

import SwiftUI

struct HeaderView: View {
    var titleName: String
    
    var body: some View {
        ZStack{
            Color("Blurple")
                .ignoresSafeArea()
            VStack{
                Image("InnerHeaderImage")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                Spacer()
            }
            VStack{
                HStack{
                    Text("Stress Data")
                        .foregroundColor(Color("OffWhite"))
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding(.top, 90)
                        .padding(.leading, 25)
                    Spacer()
                }
                Spacer()
            }
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(titleName: "Loading")
    }
}
