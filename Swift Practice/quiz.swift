//
//  Quiz.swift
//  Swift Practice
//
//  Created by UCode on 12/9/17.
//  Copyright © 2017 Jacob. All rights reserved.
//

import Foundation

struct Quiz {
    //    score,questions
    var score:     Int
    var questions: [Question]
}

struct Question {
    var text:    String
    var answers: [Answer]
    var value:   Int
}

struct Answer {
    var text:      String
    var isCorrect: Bool
}

func quizProgram() {
    
    
    var quiz = Quiz(score: 0, questions: [
        Question(text: "5 * 5", answers: [
            Answer(text: "25", isCorrect: true),
            Answer(text: "55", isCorrect: false),
            Answer(text: "35", isCorrect: false),
            Answer(text: "15", isCorrect: false),
            Answer(text: "10", isCorrect: false)
            ], value: 1),
        Question(text: "140 / 20", answers: [
            Answer(text: "7", isCorrect: true),
            Answer(text: "12", isCorrect: false),
            Answer(text: "8", isCorrect: false),
            Answer(text: "5", isCorrect: false),
            Answer(text: "4", isCorrect: false)
            ], value: 1),
        Question(text: "(14 - 5) + 30 * 1.5", answers: [
            Answer(text: "54", isCorrect: true),
            Answer(text: "14", isCorrect: false),
            Answer(text: "36", isCorrect: false),
            Answer(text: "42", isCorrect: false),
            Answer(text: "12", isCorrect: false)
            ], value: 1),
        Question(text: "60 / 2 * 3", answers: [
            Answer(text: "90", isCorrect: true),
            Answer(text: "10", isCorrect: false),
            Answer(text: "60", isCorrect: false),
            Answer(text: "33", isCorrect: false),
            Answer(text: "56", isCorrect: false)
            ], value: 1)
        
        ])
    
    
    for (index, question) in quiz.questions.enumerated() {
        print("Question \(index + 1)) \(question.value) point(s): \(question.text)")
        for (index, answer) in question.answers.enumerated() {
            print("  \(index + 1)) \(answer.text)")
        }
        let response = readLine()
        if let unwrappedresponse = response {
            let chosenAnswer = question.answers[Int(unwrappedresponse)! - 1]
            if(chosenAnswer.isCorrect) {
                print("Correct!")
            }
            else{
                print("Question wrong!")
            }
        }
    }
}


