//
//  YogaTimer.swift
//  Stretch+Paws
//
//  Created by Thomas Stubblefield on 11/30/21.
//

import Foundation

// What kind of data type? Class or struct? Class because it is only one timer
// Where does the timer need to be shared?

class YogaTimer: ObservableObject {
    @Published var timerActive = false
    @Published var timerPaused = false
    @Published var timerEnded = false
    @Published var timerDuration = 30
    var yogaTimer = Timer()
    // Timer Functionality
    // Start the timer
    func startTimer() {
        timerActive = true
        timerPaused = false
        timerEnded = false
        yogaTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
            // Remove a second from the timer duration & loop
            self.timerDuration -= 1
            // If the timer gets to 0, stop the timer
            if self.timerDuration == 0 {
                self.stopTimer()}})}
    // Pause the timer
    func pauseTimer() {
        timerActive = false
        timerPaused = true
        yogaTimer.invalidate()
    }
    // End the timer
    func stopTimer() {
        // Play a sound
        timerEnded = true
        timerActive = false
        yogaTimer.invalidate()
        timerDuration = 30
    }
    // Play a sound
    func playSound() {
        // Play audio file
    }
    // Countdown
    
    func setTitleText() -> String {
        if timerEnded {
            return "You did it!"
        } else {
            return "Hold that pose"
        }
    }
func setDescriptionText() -> String {
    
    if timerEnded {
        return "Purrrrfect!"
    } else {
        return "Try staying in this pose for 30 seconds. If you need to come out sooner, that's ok."
    }
}
}

