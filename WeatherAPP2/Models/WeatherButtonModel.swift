//
//  WeatherButton.swift
//  WeatherAPP2
//
//  Created by Marcelo Amaral Alves on 2023-11-16.
//

import Foundation
import SwiftUI

struct WeatherButtonModel: View {
    
    var dayTimeTitle: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(dayTimeTitle)
            .frame(width: 300, height: 70)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(40)
            .font(.title2)
            .bold()
    }
}
