//
//  RectangleCardView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/29/20.
//

import SwiftUI

struct RectangleCardView: View {
    var bodyName: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color("CardGray"))
            HStack{
                Text(bodyName)
                    .foregroundColor(Color("OffWhite"))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .padding(.leading, 10)
                Spacer()
                Image("righticon")
                    .padding()
                    .padding(.trailing, 10)
            }
        }
    }
}

struct RectangleCardView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCardView(bodyName: "Loading")
    }
}
