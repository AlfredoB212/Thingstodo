//
//  ViewController.swift
//  TriviaGame
//
//  Created by Alfredo Barragan on 12/6/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var answerTableView: UITableView!
   
    var currentIncorrectAnswers: [String] = [] {
        didSet {
            answerTableView.reloadData()
        }
    }
    
    var currentAnswer = ""
    
    
    var currentCategory = "" {
        didSet {
            self.categoryLabel.text = self.currentCategory
        }
    }
    
    
    
    
    var currentQuestion = "" {
        didSet {
            DispatchQueue.main.async {
                self.questionLabel.text = self.currentQuestion
            }
        }
    
    }
    
    var triviaQuestions = [ResultWrapper]()
    var triviaIndex = 0
    var allAnswers: [String] {
        return currentIncorrectAnswers + [currentAnswer]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTableView.dataSource = self
        loadData { (theDataIGot) in
            self.parseJSON(data: theDataIGot)
            DispatchQueue.main.async {
                self.nextQuestion()
            }
            
            
            
        }
        
    }
    
    
 @objc  func nextQuestion() {
        self.currentQuestion = self.triviaQuestions[triviaIndex].question
        self.currentCategory = self.triviaQuestions[triviaIndex].category
        self.currentIncorrectAnswers = self.triviaQuestions[triviaIndex].incorrect_answers
        self.currentAnswer = self.triviaQuestions[triviaIndex].correct_answer
        triviaIndex += 1
    }
    
    
    
    
    func loadData(completionHandler: @escaping ((Data) -> Void)) {
        guard let myURL = URL.init(string: "https://opentdb.com/api.php?amount=10") else { return }
        
        URLSession.shared.dataTask(with: myURL) { (data, response, error) in
        
            
            if let response = response {
                print(response)
            }
            
            if let error = error {
                print(error)
            }
            
            if let data = data {
                completionHandler(data)
                
                
                
            }
        }.resume()
    
        
    }

    func parseJSON(data: Data) {
        do {
        let triviaData = try JSONDecoder().decode(TriviaData.self, from: data)
        self.triviaQuestions = triviaData.results
        
    }
       catch {
        print(error)
    }

    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentIncorrectAnswers.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.selectionStyle = .none
        let answerToSet = allAnswers[indexPath.row]
        cell.textLabel?.text = answerToSet
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.textLabel?.text == currentAnswer {
            tableView.cellForRow(at: indexPath)?.backgroundColor = .green
            let _ : Timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextQuestion), userInfo: nil, repeats: false)
        } else {
            tableView.cellForRow(at: indexPath)?.backgroundColor = .red
        }
    }
}
