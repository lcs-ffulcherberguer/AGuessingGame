//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Fulcherberguer, Fernanda on 2019-09-30.
//  Copyright © 2019 Fulcherberguer, Fernanda. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var submittedGuess: UITextField!
    let targetNumber = Int.random(in: 1...100)
    
    // MARK: Initializers
    
    
    // MARK: Methods (functions) - behaviours
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object named 'synthesizer', which is an instance of the
        //class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
        // Make a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
        
        // Make an object named 'utterance', which is an instance of the class
        // AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
        
        
        
        
    }

    // Will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        
        // Obtain the guess value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        // For testing purposes, what was the guess?
        print("For testing purposes, the guess made was \(guessNumber)")
        
        // Give the appropriate feedback to the user
        if guessNumber > targetNumber {
            print("Guess lower next time")
            
            // Make an object named 'synthesizer', which is an instance of the
            //class 'AVSpeechSynthesizer'
            let synthesizer = AVSpeechSynthesizer()
            
            // Make a string that contains what we want the computer to say
            let message = "Guess lower next time"
            
            // Make an object named 'utterance', which is an instance of the class
            // AVSpeechUtterance
            let utterance = AVSpeechUtterance(string: message)
            
            // Speak the message
            synthesizer.speak(utterance)
            
        } else if guessNumber < targetNumber {
             print("Guess higher next time")
            
            // Make an object named 'synthesizer', which is an instance of the
            //class 'AVSpeechSynthesizer'
            let synthesizer = AVSpeechSynthesizer()
            
            // Make a string that contains what we want the computer to say
            let message = "Guess higher next time"
            
            // Make an object named 'utterance', which is an instance of the class
            // AVSpeechUtterance
            let utterance = AVSpeechUtterance(string: message)
            
            // Speak the message
            synthesizer.speak(utterance)
            
            
        } else {
            print("You are correct!")
            
            // Make an object named 'synthesizer', which is an instance of the
            //class 'AVSpeechSynthesizer'
            let synthesizer = AVSpeechSynthesizer()
            
            // Make a string that contains what we want the computer to say
            let message = "You are correct"
            
            // Make an object named 'utterance', which is an instance of the class
            // AVSpeechUtterance
            let utterance = AVSpeechUtterance(string: message)
            
            // Speak the message
            synthesizer.speak(utterance)
        }
    
}


}
