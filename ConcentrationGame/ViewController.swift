//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Surachat Yaitammasan on 12/3/2562 BE.
//  Copyright © 2562 Surachat Yaitammasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var keepEmoji:String?
    
    var emojiChoies = ["🕶", "👟", "👕", "👖", "🕶", "👟", "👕", "👖"]
    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flip count \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var touchCardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = touchCardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoies[cardNumber], on: sender)
            print("Card number = \(cardNumber)")
        }else{
            print("Choosed card was not emoji choise")
        }
    }
    
    func flipCard(withEmoji emoji:String, on button:UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.black
        }
        else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        }
    }
}
