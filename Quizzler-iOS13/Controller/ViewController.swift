//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var qeustionLabel: UILabel!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @objc func updateUI(){
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        qeustionLabel.text = quizBrain.getQuestionText()
        oneButton.setTitle(quizBrain.getAnswers()[0], for:.normal )
        twoButton.setTitle(quizBrain.getAnswers()[1], for:.normal )
        threeButton.setTitle(quizBrain.getAnswers()[2], for:.normal )
        oneButton.backgroundColor=UIColor.clear
        twoButton.backgroundColor=UIColor.clear
        threeButton.backgroundColor=UIColor.clear
        progressBar.progress = quizBrain.getProgress()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if quizBrain.checkAnswer(sender.currentTitle!){
            sender.backgroundColor=UIColor.green
        }else{
            sender.backgroundColor=UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
    }
    
   
    
    
}

