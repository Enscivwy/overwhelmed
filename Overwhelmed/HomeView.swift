//
//  ContentView.swift
//  Overwhelmed
//
//  Created by Nikhil Rao on 12/28/20.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("username") var username: String?
    var body: some View {
        NavigationView{
            ScrollView{
            ZStack{
                Color("SmokyBlack")
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("Blurple"))
                        VStack{
                            Image("HeaderImage")
                                .resizable()
                                .scaledToFill()
                                Spacer()
                        }//vstack ends
                        VStack{
                            HStack{
                                Text("Hey, \(username!)")
                                    .foregroundColor(Color("OffWhite"))
                                    .fontWeight(.bold)
                                    .font(.system(size: 40))
                                    .padding(.top, 80)
                                    .padding(.leading, 25)
                                Spacer()
                                Image("ProfileIcon")
                                    .padding(.top, 65)
                                    .padding(.trailing, 20)
                            }//hstack ends
                            Spacer()
                        }//vstack ends
                    }//header zstack ends
                    .padding(.top, -45)
                    
                    HStack{
                        // ADD I ICON LINKS
                        CardView(titleName: "Stress", percent: "69", subtitleName: "(Avg.)")
                            .padding(.leading, 25)
                        CardView(titleName: "Sleep", percent: "69", subtitleName: "(Quality)")
                            .padding(.trailing, 25)
                    } // card hstacks end
                    .padding(.top, 50)
                    
                    VStack{
                        // TODO ADD LINKS
                        NavigationLink(destination: StressDataView(),
                            label: {
                                RectangleCardView(bodyName: "View Stress Data")
                                    .padding(.horizontal, 25)
                            })
                        NavigationLink(destination: SleepDataView(),
                            label: {
                                RectangleCardView(bodyName: "View Sleep Data")
                                    .padding(.horizontal, 25)
                            })
                        
                    }
                }
            } // parent zstack ends
            .padding(.bottom, 50)
            .navigationBarHidden(true)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            // nav view is a disappointment
            .ignoresSafeArea()
            }//scroll view ends
        }//nav view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
