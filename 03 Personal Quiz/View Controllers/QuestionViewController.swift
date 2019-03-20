//
//  QuestionViewController.swift
//  03 Personal Quiz
//
//  Created by macbook pro 665 on 16/03/2019.
//  Copyright © 2019 Pavel Meshcheryakov. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    // MARK: - @IBOutlet
    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var rengerStackView: UIStackView!
    
    
    //MARK: - Properties
    var questions = Question.loadData()
    var questionIndex = 0
    
    // MARK: - ... UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - ... Custom Methods
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rengerStackView.isHidden = true
    
        navigationItem.title = "Вопрос № \(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranger:
            rengerStackView.isHidden = false
        }
    }
}
    

