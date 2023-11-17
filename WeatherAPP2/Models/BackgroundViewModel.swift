//
//  BackgroundViewModel.swift
//  WeatherAPP2
//
//  Created by Marcelo Amaral Alves on 2023-11-16.
//

import Foundation
import SwiftUI

struct BackgroundView: View {
//    var topColor: Color
//    var bottomColor: Color
    
   var isNight: Bool
    
    var body: some View {
        
//        LinearGradient(gradient: Gradient(colors:
//                        [isNight ? .black : .indigo, isNight ?
//                            .blue : .gray ]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea()
        ContainerRelativeShape()
            .fill(isNight ? Color.indigo.gradient : Color.black.gradient)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
