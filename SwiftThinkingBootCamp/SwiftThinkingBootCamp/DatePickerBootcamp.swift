//
//  DatePickerBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 30/10/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate : Date = Date()
    let startingDate: Date = Calendar.current.date(from:DateComponents(year:2018)) ??  Date()
    let endingdate : Date = Date()
    var dateFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .full
        return formatter
    }
    var body: some View {
//DatePicker("Select a Date", selection: $selectedDate)
       // DatePicker("select a date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
        VStack {
            Text("SELECTED DATE")
            Text(dateFormatter.string(from: selectedDate))
//            Text(selectedDate.description)
                .font(.title)
            DatePicker("Select a date",selection: $selectedDate,in: startingDate...endingdate,displayedComponents: [.hourAndMinute])
                .accentColor(Color.red)
                .datePickerStyle(
                    GraphicalDatePickerStyle()
            )
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
