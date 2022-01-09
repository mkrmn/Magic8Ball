//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Michelle K on 1/8/22.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - Properties
    
    // array for answers
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    // creates variable for label
    @IBOutlet weak var answerLabel: UILabel!
    
    // creates variable for button
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // press shake it => new answer
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    // when the user shakes the phone
    // triggers shake it as well
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

        generateAnswer()
    }
    
    // function that generates random index -> answer so that there will be a different answer each time the shake it button is triggered
    // has its own function bc it is repeated
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)

        answerLabel.text = answers[randomIndex]
    }
    
}

