//
//  Backgroundmusic.swift
//  Tictac
//
//  Created by Truong, Nguyen Tan on 26/08/2023.
//

import Foundation
import AVFoundation

//Use class here to create a singleton for the music not passing to another view
class Backgroundmusic {
    static let shared = Backgroundmusic()
    var audioPlayer: AVAudioPlayer?

    //Function to play music in a loop ceating a background music
    func startBackgroundMusic(backgroundMusicFileName: String) {
        if let bundle = Bundle.main.path(forResource: backgroundMusicFileName, ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                guard let audioPlayer = audioPlayer else { return }
                audioPlayer.numberOfLoops = -1
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            } catch {
                print(error)
            }
        }
    }
    
    //function to stop playing music
    func stopBackgroundMusic() {
        guard let audioPlayer = audioPlayer else { return }
        audioPlayer.stop()
    }
}
