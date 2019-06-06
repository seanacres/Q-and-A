//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Sean Acres on 6/6/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askedByLabel: UILabel!
    @IBOutlet var answeredLabel: UILabel!
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    private func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askedByLabel.text = question.asker
        answeredLabel.text = question.answer == nil ? "Can you answer this?" : "Tap to view answer."
    }
}
