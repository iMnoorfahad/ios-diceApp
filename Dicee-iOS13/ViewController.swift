//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var leftDiceNumber = 1
    var rightDiceNumber = 5
    @IBOutlet weak var firstDiece: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    
    @IBAction func Update(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        firstDiece.image = diceArray[Int.random(in: 0...5)]
        
        secondDice.image = diceArray[Int.random(in: 0...5)]
    }
}
