//
//  RectangleView.swift
//  Overwhelmed WatchKit Extension
//
//  Created by Nikhil Rao on 1/4/21.
//

import SwiftUI

struct RectangleView: View {
    var titleName: String
    var value: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color("Gray"))
            HStack{
                Text(titleName)
                    .fontWeight(.bold)
                    .padding()
                Spacer()
                Text(value)
                    .fontWeight(.bold)
                    .padding()
            }
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(titleName: "Loading", value: "--%")
    }
}
