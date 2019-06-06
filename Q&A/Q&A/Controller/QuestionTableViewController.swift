//
//  QuestionTableViewController.swift
//  Q&A
//
//  Created by Sean Acres on 6/6/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    let questionController: QuestionController = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else {
            return UITableViewCell()
        }

        let question = questionController.questions[indexPath.row]
        cell.question = question

        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            questionController.delete(questionAt: indexPath)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "askQuestion" {
            guard let askQuestionVC = segue.destination as? AskQuestionViewController else { return }
            askQuestionVC.questionController = questionController
        } else if segue.identifier == "showAnswer" {
            guard let answerQuestionVC = segue.destination as? AnswerViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            answerQuestionVC.questionController = questionController
            answerQuestionVC.question = questionController.questions[indexPath.row]
        }
        
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
