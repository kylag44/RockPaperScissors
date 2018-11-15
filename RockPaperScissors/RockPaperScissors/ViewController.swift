//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Kyla  on 2018-11-15.
//  Copyright © 2018 Kyla . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var outcomeLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func generateRandomSign() -> String {
    // Randomly return one of the following 👊 ✋️ ✌
    // Generate a random number
    //Use the arc4random_uniform function to generate a random number. This function accepts a number as it’s input and generates a random number between 0 and that number -1. So by passing in 3 to this function, you will get back a random number between 0 and 2
    let randomNumber = arc4random_uniform(3)
    
    // Create a new empty string variable to hold the computer's sign
    //Create a new empty string variable to hold the sign for the computer.
    var computerSign = "" // 2
    
    // Set the computer sign to one of the three emojis
    //Use the random number to assign a sign to the computerSign variable.
    if (randomNumber == 0) { // 3
      computerSign = "🖐🏼"
    } else if (randomNumber == 1) {
      computerSign = "👊🏼"
    } else if (randomNumber == 2) {
      computerSign = "✌🏼"
    }
    
    //Return the sign.
    return computerSign // 4
  }
  
  //#Pragma Mark Actions
  @IBAction func playRock(_ sender: Any) {
    let iPhoneSign = generateRandomSign()
    print("User selected 👊🏼, iPhone selected " + iPhoneSign)
    
    if iPhoneSign == "✌🏼" {
      outcomeLabel.text = "You:👊🏼\niPhone: " + iPhoneSign + "\nYou won, the iPhone lost"
      print("You won, the iPhone lost")
    } else if iPhoneSign == "🖐🏼" {
      outcomeLabel.text = "You:👊🏼\niPhone: " + iPhoneSign + "\nYou lost, the iPhone won"
      print("You lost, the iPhone won")
    } else if iPhoneSign == "👊🏼" {
      outcomeLabel.text = "You: 👊🏼\niPhone: " + iPhoneSign + "\nIt's a 👔"
      print("It's a 👔")
    }
  }
  
  @IBAction func playPaper(_ sender: Any) {
    let iPhoneSign = generateRandomSign()
    print("User selected 🖐🏼, iPhone selected " + iPhoneSign)
    
    if iPhoneSign == "✌🏼" {
      outcomeLabel.text = "You:🖐🏼\niPhone: " + iPhoneSign + "\nYou lost, the iPhone won"
      print("You lost, the iPhone won")
    } else if iPhoneSign == "🖐🏼" {
      outcomeLabel.text = "You:🖐🏼\niPhone: " + iPhoneSign + "\nIt's a 👔"
      print("It's a 👔")
    } else if iPhoneSign == "👊🏼" {
      outcomeLabel.text = "You:🖐🏼\niPhone: " + iPhoneSign + "\nYou won, the iPhone lost"
      print("You won, the iPhone lost")
    }
  }
  
  @IBAction func playScissors(_ sender: Any) {
    let iPhoneSign = generateRandomSign()
    print("User selected ✌🏼, iPhone selected " + iPhoneSign)
    
    if iPhoneSign == "✌🏼" {
      outcomeLabel.text = "You:✌🏼\niPhone: " + iPhoneSign + "\nIt's a 👔"
      print("It's a 👔")
    } else if iPhoneSign == "🖐🏼" {
      outcomeLabel.text = "You:✌🏼\niPhone: " + iPhoneSign + "\nYou won, the iPhone lost"
      print("You won, the iPhone lost")
    } else if iPhoneSign == "👊🏼" {
      outcomeLabel.text = "You:✌🏼\niPhone: " + iPhoneSign + "\nYou lost, the iPhone won"
      print("You lost, the iPhone won")
    }
  }
  
  
  
}

