//
//  WeatherButton.swift
//  TeachableCourseWeatherApp
//
//  Created by daya vijayan on 06/11/23.
//
import SwiftUI
import Foundation
struct weatherButton : View{
    var title : String
    var backgroundColor : Color
    var body: some View{
        Text(title)
            .frame(width:250,height:65)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}
