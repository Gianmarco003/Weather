//
//  ContentView.swift
//  Weather
//
//  Created by Gianmarco on 23/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack{
//            backgorundView(isNight: $isNight)
            VStack(){
                Text("Cupertino, CA")
                    .font(.system(.title))
                    .foregroundColor(.white)
                    .padding(32)
                VStack(spacing: 10){
                    Image(systemName: isNight ? "moon.fill" : "cloud.sun.fill")
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
                Button {
                    isNight.toggle()
                } label: {
                    weatherButtonView(text: "Change day time",
                                      backgroundColor: .white,
                                      textColor: .blue)
                }
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
//                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

//struct backgorundView: View {
//    @Binding var isNight: Bool
    
//    var body: some View {
//        Complex gradient color
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
//                                                   isNight ? .gray : Color("lightBlue")]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea(.all)
//
//        Simple gradient color 
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
//    }
//}
