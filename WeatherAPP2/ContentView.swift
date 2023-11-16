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
                [Color.indigo, Color.white]),
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
                    
                    Text("-5°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                HStack {
                    VStack {
                        Text("TUE")
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("-5°")
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
