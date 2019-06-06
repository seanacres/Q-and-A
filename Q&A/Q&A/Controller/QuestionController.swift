//
//  QuestionController.swift
//  Q&A
//
//  Created by Sean Acres on 6/6/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import Foundation

var questions: [Question] = []

func create(question: Question) {
    questions.append(question)
}

func update(question: Question, answer: String, answerer: String) {
    
    question.answer = answer
    question.answerer = answerer
}

func delete(question: Question, indexPath: IndexPath) {
    
}
