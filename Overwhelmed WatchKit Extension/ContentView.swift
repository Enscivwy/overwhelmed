//
//  ContentView.swift
//  Overwhelmed WatchKit Extension
//
//  Created by Nikhil Rao on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            RectangleView(titleName: "Stress", value: "69%")
            RectangleView(titleName: "Sleep", value: "69%")
            RectangleView(titleName: "Energy", value: "69%")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
