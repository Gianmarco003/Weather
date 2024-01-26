//
//  weatherButtonView.swift
//  Weather
//
//  Created by Gianmarco on 26/01/24.
//

import SwiftUI

struct weatherButtonView: View {
    var text: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
    Text(text)
            .frame(width: 250, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}

struct weatherButtonView_Previews: PreviewProvider {
    static var previews: some View {
        weatherButtonView(text: "uno",
                          backgroundColor: .blue,
                          textColor: .white)
    }
}
