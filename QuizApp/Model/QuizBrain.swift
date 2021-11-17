//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Yash on 11/10/21.
//

import Foundation


struct QuizBrain {
    
    
    var questionBank = [
    
    Questions(text: "2 + 2 = 4", answer: "True"),
    Questions(text: "6 - 2 = 5", answer: "False"),
    Questions(text: "6 + 2 = 9", answer: "False")
    ]
    
    var questionNumber = 0
    
    
    func getQuestion() -> String {
        
        return questionBank[questionNumber].text
        
}
    
    func checkAnswer(_userInput : String) -> Bool {
        
        if _userInput == questionBank[questionNumber].answer {
        
            return true
            
    }
    
    else {
        return false
    }
    }
     mutating func nextQuestion() {
        
        if questionNumber + 1 < questionBank.count {
            
            questionNumber += 1
        }
        
        
        else {
            
            questionNumber = 0
        }
     
    
    
    }
    }
