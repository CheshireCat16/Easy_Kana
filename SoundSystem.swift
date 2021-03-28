//
//  SoundSystem.swift
//  Easy Kana
//
//  Created by administrator on 3/28/21.
//

import AVFoundation

let bellPath = Bundle.main.path(forResource: "small_bell", ofType: "wav")
let bellURL = URL(fileURLWithPath: bellPath!)


class bellSound {
    var bellSound: AVAudioPlayer
    
    init(bellURL: URL) throws {
        do {
            self.bellSound = try AVAudioPlayer(contentsOf: bellURL)
        }
        catch {
            self.bellSound = AVAudioPlayer()
        }
    }
}

