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
            LinearGradient(gradient: Gradient(colors:
                [Color.indigo, Color.gray]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 8) {
                Text("Montreal, QC")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190, height: 140)
                        .padding()
                  
                    
                    Text("-5°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
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
                
            }
        }
    }
}

#Preview {
    ContentView()
}


