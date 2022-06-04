//
//  AudioPlayer.swift
//  Restart
//
//  Created by Shankar Chowdary on 04/06/22.
//

import Foundation
import AVFoundation


var audioPlayer : AVAudioPlayer?

func playASound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
