//
//  ModularContent.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/31/20.
//

import SwiftUI

struct ModularContent: View {
    var titleName: String
    var subtitleText: String
    var imageName: String
    var body: some View {
        VStack{
            HStack{
                Text(titleName)
                    .foregroundColor(Color("OffWhite"))
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding(.leading, 40)
                    .padding(.top, 80)
                Spacer()
            } //hstack ends
            
            HStack{
                Text(subtitleText)
                    .foregroundColor(Color("OffWhite"))
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                    .padding(.leading, 40)
                .   padding(.trailing, 40)
                Spacer()
            } //hstack ends
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .padding(.top, 80)
            Spacer()
        }
    }
}

struct ModularContent_Previews: PreviewProvider {
    static var previews: some View {
        ModularContent(titleName: "Loading", subtitleText: "Loading", imageName: "Loading")
    }
}
