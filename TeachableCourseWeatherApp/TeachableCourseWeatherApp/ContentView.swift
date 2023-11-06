//
//  ContentView.swift
//  TeachableCourseWeatherApp
//
//  Created by daya vijayan on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    
   @State private var isnight = false
    var body: some View {
        ZStack{
            /*BackgroundView(isnight: $isnight)*/ // if you are not changing
            BackgroundView(isnight: $isnight) // if you are changing
            VStack{
                CityTextView(city: "Cupertino ,CA" )
                MainWeatherStatusView(iconName: isnight ?  "moon.stars.fill" : "cloud.sun.fill", degrees: 76)
                
                Spacer()
                VStack{
                    
                    Spacer()
                    HStack(spacing: 27) {
                        WeatherDayView(dayOfWeek : "TUE",
                                       imageName: "cloud.sun.fill",
                                       temperature: 75)
                        WeatherDayView(dayOfWeek : "WED",
                                       imageName: "sun.dust.fill",
                                       temperature: 74)
                        WeatherDayView(dayOfWeek : "THU",
                                       imageName: "moon.dust.fill",
                                       temperature: 66)
                        WeatherDayView(dayOfWeek : "FRI",
                                       imageName: "cloud.sun.rain.fill",
                                       temperature: 73)
                        WeatherDayView(dayOfWeek : "SAT",
                                       imageName: "wind.snow",
                                       temperature: 75)
                    }
                    Spacer()
                    Button{
                        isnight.toggle()
                    }label:{
                        weatherButton(title: "Change The Time Of The day", backgroundColor: Color.white)
                    }
                    Spacer()
                      
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var imageName: String
    var temperature : Int
    var body: some View {
       
       
            VStack{
                Text(dayOfWeek)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 33,height:33)
                Text("\(temperature)°")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
        
    }
}

struct BackgroundView: View {
    //we need the parent isnight
    @Binding var isnight : Bool
    var body: some View {
        LinearGradient(colors: [isnight ? .black : .blue,isnight ? .gray : .lightblue], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var city :String
    var body: some View {
        Text(city)
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding(.bottom,80)
    }
}
struct MainWeatherStatusView : View{
    var iconName : String
    var degrees : Int
    var body: some View{
        Image(systemName: iconName)
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            .frame(width: 90,height:90)
        Text("\(degrees)°")
            .font(.system(size: 60, weight: .semibold, design: .default))
            .foregroundColor(.blue)
    }
   
}
