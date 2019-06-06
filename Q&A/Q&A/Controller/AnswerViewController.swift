//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Sean Acres on 6/6/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askedByLabel: UILabel!
    @IBOutlet var answererTextField: UITextField!
    @IBOutlet var answerTextView: UITextView!
    var questionController: QuestionController?
    var question: Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBAction func submitAnswerButtonTapped(_ sender: Any) {
        guard let answererText = answererTextField.text,
            let question = question else { return }
        
        if answererText != "" || answerTextView.text != "" {
            questionController?.update(question: question, answer: answerTextView.text, answerer: answererText)
        } else {
            return
        }
    }
    
    func updateViews() {
        questionLabel.text = question?.question
        askedByLabel.text = question?.asker
        answererTextField.text = question?.answerer
        answerTextView.text = question?.answer
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
