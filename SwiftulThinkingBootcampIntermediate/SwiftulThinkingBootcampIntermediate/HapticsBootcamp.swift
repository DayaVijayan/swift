//
//  HapticsBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI
class Hapticmanager{
    static let instance = Hapticmanager()
    func notification(type:UINotificationFeedbackGenerator.FeedbackType){
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    func impact(style:UIImpactFeedbackGenerator.FeedbackStyle){
        let generator = UIImpactFeedbackGenerator(style:style)
        generator.impactOccurred()
    }
}

struct HapticsBootcamp: View {
    var body: some View {
        VStack(spacing:20){
            Button("success"){Hapticmanager.instance.notification(type: .success)}
        }
    }
}

#Preview {
    HapticsBootcamp()
}
