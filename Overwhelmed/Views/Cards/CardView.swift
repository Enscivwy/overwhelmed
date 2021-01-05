//
//  CardView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/29/20.
//

import SwiftUI

struct CardView: View {
    var titleName: String
    var percent: String
    var subtitleName: String
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color("CardGray"))
            VStack{
                HStack{
                    Text(titleName)
                        .foregroundColor(Color("OffWhite"))
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .padding(.bottom, -20)
                    Spacer()
                }// title hstack ends
                HStack(spacing: 0){
                    Text(percent)
                        .foregroundColor(Color("OffWhite"))
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                    Text("%")
                        .foregroundColor(Color("OffWhite"))
                        .fontWeight(.bold)
                        .font(.system(size: 30))
                        .padding(.top)
                    Spacer()
                }
                HStack{
                    Text(subtitleName)
                        .foregroundColor(Color("OffWhite"))
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                        .padding(.top, -15)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Image("iicon")
                        .padding(.trailing, 10)
                        .padding(.bottom, 5)
                }
                Spacer()
            }// title vstack ends
        }// parent zstack ends
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(titleName: "Loading", percent: "69", subtitleName: "Avg.")
            
    }
}
