//
//  soundsBootcamp.swift
//  SwiftulThinkingBootcampIntermediate
//
//  Created by daya vijayan on 02/11/23.
//

import SwiftUI
import AVKit
class SoundManager{
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    enum SoundOption: String{
        case tada = "Tada-sound"
        case thunder = "Thunder-wind-and-rain-sound-effect"
    }
    func playSound(sound:SoundOption){
        guard let url = Bundle.main.url(forResource:sound.rawValue, withExtension: ".mp3")else{return}
        do{
            player = try  AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error{
            print("Error playing sound.\(error.localizedDescription)")
        }
    }
}
struct soundsBootcamp: View {
    
    var body: some View {
        VStack(spacing:40){
            Button("Play Sound 1"){
                SoundManager.instance.playSound(sound: .tada)
            }
            Button("Play Sound 1"){
                SoundManager.instance.playSound(sound: .thunder)
            }
        }
    }
}

#Preview {
    soundsBootcamp()
}
