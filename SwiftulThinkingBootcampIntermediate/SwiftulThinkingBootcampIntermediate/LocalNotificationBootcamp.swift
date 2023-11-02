//
//  LocalNotificationBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI
import UserNotifications
class NotificationManager{
    static let instance = NotificationManager() //singleton
    func requestAuthorization(){
        let options: UNAuthorizationOptions = [.alert,.sound,.badge]
        UNUserNotificationCenter.current().requestAuthorization(options:options){(success,error)in
            if let error = error{
                print("ERROR:\(error)")
            }else{
                print("SUCCESS")
            }
        }
    }
    func schedulenotification(){
        let content = UNMutableNotificationContent()
        content.title = "this is my first notification"
        content.subtitle = "easy"
        content.sound = .default
        content.badge = 1
        //time
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
        
    }
}

struct LocalNotificationBootcamp: View {
    
   
    
   

    var body: some View {
        VStack(spacing:40){
            Button("Request Permission"){
                NotificationManager.instance.requestAuthorization()
            }
            Button("Schedule Notification"){
                NotificationManager.instance.schedulenotification()
            }
        }.onAppear{
            UIApplication.shared.applicationIconBadgeNumber = 0        }
    }
}

#Preview {
    LocalNotificationBootcamp()
}
