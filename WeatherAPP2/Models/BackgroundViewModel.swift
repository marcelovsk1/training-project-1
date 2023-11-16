//
//  BackgroundViewModel.swift
//  WeatherAPP2
//
//  Created by Marcelo Amaral Alves on 2023-11-16.
//

import Foundation
import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors:
                                            [Color.indigo, Color.gray]),
                       startPoint: .topLeading, endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}
