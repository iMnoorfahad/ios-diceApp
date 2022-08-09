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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func Update(_ sender: UIButton) {
        firstDiece.image = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][leftDiceNumber]
        
        secondDice.image = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][rightDiceNumber]
        
        if(leftDiceNumber < 5){
            leftDiceNumber = leftDiceNumber + 1
        }else{
            leftDiceNumber = 1
        }
        
        if(rightDiceNumber > 0){
            rightDiceNumber = rightDiceNumber - 1
            print("right dice number \(rightDiceNumber)")
        }else{
            rightDiceNumber = 5
        }

    }
}
