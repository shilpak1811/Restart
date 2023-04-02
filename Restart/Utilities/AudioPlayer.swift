//
//  AudioPlayer.swift
//  Restart
//
//  Created by Shilpa Kumari on 31/03/23.
//

import Foundation
import AVFoundation

public var audioPlayer: AVAudioPlayer?

public func playSound(file: String, type: String) {
    if let path = Bundle.main.path(forResource: file, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }
        catch {
            print("could not play the sound file")
        }
    }
}
