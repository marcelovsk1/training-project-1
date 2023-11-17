//
//  ContentView.swift
//  WeatherAPP2
//
//  Created by Marcelo Amaral Alves on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .indigo,
                           bottomColor: isNight ? .indigo : .gray)
            
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
                    isNight.toggle()
                } label: {
                    WeatherButtonModel(dayTimeTitle: "Change Day Time",
                                       textColor: .white,
                                       backgroundColor: .secondary)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


