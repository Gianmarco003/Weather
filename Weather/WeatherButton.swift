//
//  WeatherButton.swift
//  Weather
//
//  Created by Gianmarco on 26/01/24.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    let text: String
    let textColor: Color
    let backgroundColor: Color
    
    var body: some View {
        Button(text){
            print("Tapped")
        }
        .frame(width: 280, height: 50)
        .background(backgroundColor)
        .foregroundColor(textColor)
        .font(.system(size: 20, weight: .bold))
        .cornerRadius(10)
    }
}
