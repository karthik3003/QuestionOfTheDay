//
//  VoteViewController.swift
//  QuestionOfTheDay
//
//  Created by Guest User on 11/4/17.
//

import UIKit
import Foundation

class VoteViewController: UIViewController {
    let stats:Statistician = Statistician()
    var QuestionOfTheDay: QuestionOfTheDay!
    
    @IBOutlet weak var questionLBL: UILabel!
    
    @IBOutlet weak var answer0LBL: UILabel!
    
    @IBOutlet weak var answer1LBL: UILabel!
    
    @IBOutlet weak var answer2LBL: UILabel!
    
    
    @IBAction func btnA(_ sender: Any) {
        let opnion:Opinion = Opinion(answer: 0)
        stats.saveOpinion(Opinion: opnion)
    }
    
    @IBAction func btnB(_ sender: Any) {
        let opnion:Opinion = Opinion(answer: 1)
        stats.saveOpinion(Opinion: opnion)
    }
    
    @IBAction func btnC(_ sender: Any) {
        let opnion:Opinion = Opinion(answer: 2)
        stats.saveOpinion(Opinion: opnion)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLBL?.text = stats.fetchQuestionOfTheDay().question
        answer0LBL?.text = stats.fetchQuestionOfTheDay().answer0
        answer1LBL?.text = stats.fetchQuestionOfTheDay().answer1
        answer2LBL?.text = stats.fetchQuestionOfTheDay().answer2
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        QuestionOfTheDay = stats.fetchQuestionOfTheDay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
