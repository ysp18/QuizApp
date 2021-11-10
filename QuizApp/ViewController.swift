//
//  ViewController.swift
//  QuizApp
//
//  Created by Yash on 10/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
    var questionBank = [["2 + 2 = 4","True"],
                        ["6 - 2 = 5","False"],
                        ["6 + 2 = 9","False"]]
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()   //calling a function
        
    }

    @objc func updateUI(){
        
        questions.text = questionBank[questionNumber][0]
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        let userInput = sender.currentTitle!
        
        if userInput == questionBank[questionNumber][1] {
            
        sender.backgroundColor = UIColor.green
            
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < questionBank.count {
            
            questionNumber += 1
        }
        
        
        else {
            
            questionNumber = 0
        }
     
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        
        
        
    }
    
    
    
    
    
    
    
}

