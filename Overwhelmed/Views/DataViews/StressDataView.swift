//
//  StressDataView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/31/20.
//

import SwiftUI

struct StressDataView: View {
    var body: some View {
        ScrollView{
            ZStack{
                Color("SmokyBlack").ignoresSafeArea()
                //HeaderView(titleName: "Stress Data").padding(.top, -50)
                VStack{
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                    RectangleCardView(bodyName: "yes").padding()
                }
            }// main zstack ends
            .preferredColorScheme(.dark)
            .navigationBarTitle("Stress Data", displayMode: .large)
            
        }//scroll view ends
    }
}

struct StressDataView_Previews: PreviewProvider {
    static var previews: some View {
        StressDataView()
    }
}
