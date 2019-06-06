//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Sean Acres on 6/6/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    @IBOutlet var askerName: UITextField!
    @IBOutlet var askerQuestion: UITextView!
    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        guard let askerNameText = askerName.text else { return }
        
        if askerNameText != "" || askerQuestion.text != "" {
            questionController?.create(question: askerQuestion.text, asker: askerNameText)
        } else {
            return
        }
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
