//
//  ContentView.swift
//  WeatherAPP2
//
//  Created by Marcelo Amaral Alves on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .indigo, bottomColor: .gray)
            
            VStack(spacing: 8) {
                CityNameViewModel(cityName: "Montreal, QC")
                
                VStack {
                    WeatherViewModel(imageName: "snow", temperature: 2)
                }
                .padding(.bottom, 50)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 5)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 8)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "sun.max.fill",
                                   temperature: 10)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "wind.snow",
                                   temperature: 3)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 4)
                    
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 300, height: 70)
                        .background(Color.secondary)
                        .cornerRadius(40)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


