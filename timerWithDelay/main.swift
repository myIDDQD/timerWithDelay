//
//  main.swift
//  timerWithDelay
//
//  Created by Mykola on 13.09.2022.
//

//required Framework
import Foundation

func timerWithDelay(_ : String) {
    //any label on screen
    @IBOutlet weak var titleLabel: UILabel!
    
    //change text to empty string
    titleLabel.text = ""
    
    //property for delay
    var charIndex = 0.0
    
    //text to want loop
    let titleText = "⚡️FlashChat"
    for char in titleText {
        //use func Timer
        Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
            self.titleLabel.text?.append(char)
        }
        charIndex += 1
    }
}
