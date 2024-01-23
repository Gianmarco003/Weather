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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Text("Cupertino, CA")
                    .font(.system(.title))
                    .foregroundColor(.white)
                    .padding(32)
                Image(systemName: "sunset")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180)
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
