//
//  FinalFormView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/31/20.
//

import SwiftUI

struct FinalFormView: View {
    @State var name = ""
    @AppStorage("username") var username: String = ""
    var titleName: String = "Finally\nWhat's your name?"
    var subtitleText: String = "You're just about ready to start using the app! Just a few more details and you're done!"
    var btnName: String = "Next"
    
    var body: some View {
        ZStack{
            Color("SmokyBlack").ignoresSafeArea()
            VStack{
                VStack{
                    HStack{
                        Text("Finally,\nWhat's your name?")
                            .foregroundColor(Color("OffWhite"))
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding(.leading, 40)
                            .padding(.top, 80)
                        Spacer()
                    }//hstack ends
                    
                    HStack{
                        Text("You're just about ready to start using the app! Just a few more details and you're done!")
                            .foregroundColor(Color("OffWhite"))
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                            .padding(.top, 20)
                            .padding([.bottom, .horizontal], 40)
                        
                        Spacer()
                    } //hstack ends
                    HStack{
                        VStack{
                            TextField("Your first name", text: $username)
                                .padding(.horizontal, 40)
                                .foregroundColor(.blue)
                                .font(.system(size: 30))
                                .overlay(Divider()
                                            .frame(height: 1, alignment: .bottom)
                                            .background(Color.white)
                                            .padding(. horizontal, 40)
                                            .padding(.top, 50))
                            
                        }
                        Spacer()
                    }
                    Spacer()
                    NavigationLink(destination: HomeView(),
                        label: {OnboardingButton(buttonText: "Finish up!")})
                }
            }//parent vstack
        }//main zstack ends
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .navigationBarHidden(true)
    }
}

struct FinalFormView_Previews: PreviewProvider {
    static var previews: some View {
        FinalFormView()
    }
}
