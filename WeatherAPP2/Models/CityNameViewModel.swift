//
//  CityNameViewModel.swift
//  WeatherAPP2
//
//  Created by Marcelo Amaral Alves on 2023-11-16.
//

import Foundation
import SwiftUI

struct CityNameViewModel: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.largeTitle)
            .foregroundColor(.white)
            .bold()
            .padding()
    }
}
