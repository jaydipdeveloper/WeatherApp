//
//  ContentView.swift
//  WeatherApp
//
//  Created by mac on 14/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let allDays = DateFormatter().weekdaySymbols
        Color.black.ignoresSafeArea().overlay(
            ZStack {
                VStack(spacing: 10) {
                    currentWeatherView
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                      HStack {
                        ForEach(allDays ?? [], id: \.self) { day in
                            
                            VStack(spacing: 16) {
                                Text("79.0")
                                .font(.caption)
                                .fontWeight(.medium)
                                    .foregroundColor(.white)
                                Image(systemName: "cloud.sun")
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                Text("12 PM")
                                .font(.body)
                                .fontWeight(.medium)
                                .layoutPriority(1)
                                .fixedSize()
                                    .foregroundColor(.white)
                            }.padding(10)
                            .background(Color.secondary)
                              .cornerRadius(10)
                            .padding(.leading, 20.0)
                            .padding(.trailing, -10.0)
                            
                        }
                      }
                    }
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(allDays ?? [], id: \.self) { day in
                                CreateCellRow(object: day)
                                
                            }
                        }
                    }
                }
            })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CreateCellRow: View {
    let object: String
    
    let font = Font.system(size: 15.0).weight(.bold)
    
    var body: some View {
        HStack {
            Text(object)
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Text(String(format: "%.2fº", 32.50))
                .fontWeight(.light)
                .foregroundColor(.white)
            Image(systemName: "sun.max")
                .imageScale(.large)
                .foregroundColor(.white)
        }.padding(.horizontal)
        .padding(.vertical, 22)
        .background(Color.secondary)
        .cornerRadius(10)
        .padding(.leading, 20.0)
        .padding(.trailing, 20.0)
    }
}

private var currentWeatherView: some View {
    AnyView(HStack {
        VStack(spacing: 10) {
            Text("Clear Sky Weather")
                .font(.headline)
                .fontWeight(.medium)
            HStack(spacing: 20) {
                Image(systemName: "cloud.sun.rain")
                    .imageScale(.small)
                    .foregroundColor(.white)
                Text(String(format: "%.2fº", 82.50))
                    .fontWeight(.semibold)
            }.font(.system(size: 55))
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            HStack(spacing: 16) {
                Text("Feels like \(String(format: "%.2fº", 79.80))")
                    .foregroundColor(.white)
            }.padding(.bottom, 20.0)
        }
    })
}

