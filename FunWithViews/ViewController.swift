//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftTopView: UIView!
    @IBOutlet weak var leftCenterView: UIView!
    @IBOutlet weak var leftBottomView: UIView!
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var rightTopView: UIView!
    @IBOutlet weak var rightCenterView: UIView!
    @IBOutlet weak var rightBottomView: UIView!
    @IBOutlet weak var diceRollButtonTapped: UIButton!
    @IBOutlet weak var firstDiceRollLabel: UILabel!
    @IBOutlet weak var secondDiceRollLabel: UILabel!
    @IBOutlet weak var thirdDiceRollLabel: UILabel!
    @IBOutlet weak var fourthDiceRollLabel: UILabel!
    @IBOutlet weak var fifthDiceRollLabel: UILabel!
    @IBOutlet weak var sixthDiceRollLabel: UILabel!
    
    var numberOfDiceRolls : Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        hideTheViews()
        
        firstDiceRollLabel.hidden = true
        secondDiceRollLabel.hidden = true
        thirdDiceRollLabel.hidden = true
        fourthDiceRollLabel.hidden = true
        fifthDiceRollLabel.hidden = true
        sixthDiceRollLabel.hidden = true
        
    }
    
    @IBAction func diceRollButtonTapped(sender: AnyObject) {
        let diceRoll = randomDiceRoll()
        
        switch diceRoll {   // let Int   Switch must be exhaustive, add a default clause. Every value that diceRoll could be must be satisfide.
        case 1:
            centerView.hidden = false
        case 2:
            leftTopView.hidden = false
            rightBottomView.hidden = false
        case 3:
            leftTopView.hidden = false
            centerView.hidden = false
            rightBottomView.hidden = false
        case 4:
            leftTopView.hidden = false
            leftBottomView.hidden = false
            rightTopView.hidden = false
            rightBottomView.hidden = false
        case 5:
            leftTopView.hidden = false
            leftBottomView.hidden = false
            rightTopView.hidden = false
            rightBottomView.hidden = false
            centerView.hidden = false
        case 6:
            leftTopView.hidden = false
            leftBottomView.hidden = false
            rightTopView.hidden = false
            rightBottomView.hidden = false
            leftCenterView.hidden = false
            rightCenterView.hidden = false
        default:   // to catch everything else
            print("No result! The dice rolled off the table")
        }
        
        
        
        switch numberOfDiceRolls {  //var Int
        case 1:
            firstDiceRollLabel.hidden = false
            fifthDiceRollLabel.text = String(diceRoll)
            
        case 2:
            secondDiceRollLabel.hidden = false
            secondDiceRollLabel.text = String(diceRoll)
            
        case 3:
            thirdDiceRollLabel.hidden = false
            thirdDiceRollLabel.text = String(diceRoll)
            
        case 4:
            fourthDiceRollLabel.hidden = false
            fourthDiceRollLabel.text = String(diceRoll)
            
        case 5:
            fifthDiceRollLabel.hidden = false
            fifthDiceRollLabel.text = String(diceRoll)
            
        case 6:
            sixthDiceRollLabel.hidden = false
            sixthDiceRollLabel.text = String(diceRoll)
            
        default:
            firstDiceRollLabel.text = secondDiceRollLabel.text
            secondDiceRollLabel.text = thirdDiceRollLabel.text
            thirdDiceRollLabel.text = fourthDiceRollLabel.text
            fourthDiceRollLabel.text = fifthDiceRollLabel.text
            fifthDiceRollLabel.text = sixthDiceRollLabel.text
            sixthDiceRollLabel.text = String(diceRoll)
        }
        
    }
    
    func hideTheViews() {
        
        leftTopView.hidden = true
        leftCenterView.hidden = true
        leftBottomView.hidden = true
        centerView.hidden = true
        rightTopView.hidden = true
        rightCenterView.hidden = true
        rightBottomView.hidden = true
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        numberOfDiceRolls += 1
        hideTheViews()
        
        return Int(arc4random_uniform(6) + 1)
    }
    
    
}

