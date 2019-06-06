//
//  QuestionController.swift
//  Q&A
//
//  Created by Sean Acres on 6/6/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    func create(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String) {

    }
    
    func delete(questionAt indexPath: IndexPath) {
        questions.remove(at: indexPath.row)
    }
}
