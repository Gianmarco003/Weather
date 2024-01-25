//
//  ContentView.swift
//  Weather
//
//  Created by Gianmarco on 23/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading, 
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Text("Cupertino, CA")
                    .font(.system(.title))
                    .foregroundColor(.white)
                    .padding(32)
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 180, height: 180)
                    Text("25°")
                        .font(.system(size: 70, weight: .medium))
                    .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                HStack(spacing: 20){
                    weatherDayView(day: "gio",
                                   weatherIcon: "cloud.rain.fill",
                                   temperature: 22)
                    weatherDayView(day: "ven",
                                   weatherIcon: "cloud.fog.fill",
                                   temperature: 23)
                    weatherDayView(day: "sab",
                                   weatherIcon: "sun.max.fill",
                                   temperature: 27)
                    weatherDayView(day: "dom",
                                   weatherIcon: "cloud.sun.fill",
                                   temperature: 26)
                    weatherDayView(day: "lun",
                                   weatherIcon: "cloud.fill",
                                   temperature: 23)
                }
                Spacer()
                WeatherButton(text: "Change day time", textColor: .blue, backgroundColor: .white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct weatherDayView: View {
    let day: String
    let weatherIcon: String
    let temperature: Int
    
    var body: some View {
        VStack(){
            Text(day)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
