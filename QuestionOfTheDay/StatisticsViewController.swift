//
//  StatisticianViewController.swift
//  QuestionOfTheDay
//
//  Created by Guest User on 11/4/17.
//

import UIKit

class StatisticsViewController: UIViewController {
    let stats:Statistician = Statistician()
    
    @IBOutlet weak var questionLBL: UILabel!
    
    @IBOutlet weak var ans0LBL: UILabel!
    
    @IBOutlet weak var ans1LBL: UILabel!
    
    @IBOutlet weak var ans2LBL: UILabel!
    
    @IBOutlet weak var percent0LBL: UILabel!
    
    @IBOutlet weak var percent1LBL: UILabel!
    
    @IBOutlet weak var percent2LBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var answer:[Double] = stats.findPercentage()
        percent0LBL.text = String(format: "%.2f%%",answer[0])
        percent1LBL.text = String(format: "%.2f%%",answer[1])
        percent2LBL.text = String(format: "%.2f%%",answer[2])
        
        questionLBL?.text = stats.fetchQuestionOfTheDay().question
        ans0LBL?.text = stats.fetchQuestionOfTheDay().answer0
        ans1LBL?.text = stats.fetchQuestionOfTheDay().answer1
        ans2LBL?.text = stats.fetchQuestionOfTheDay().answer2

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        var answer:[Double] = stats.findPercentage()
        percent0LBL.text = String(format: "%.2f%%",answer[0])
        percent1LBL.text = String(format: "%.2f%%",answer[1])
        percent2LBL.text = String(format: "%.2f%%",answer[2])
        
        questionLBL?.text = stats.fetchQuestionOfTheDay().question
        ans0LBL?.text = stats.fetchQuestionOfTheDay().answer0
        ans1LBL?.text = stats.fetchQuestionOfTheDay().answer1
        ans2LBL?.text = stats.fetchQuestionOfTheDay().answer2
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
