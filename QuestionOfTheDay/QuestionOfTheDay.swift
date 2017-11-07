//
//  QuestionOfTheDay.swift
//  QuestionOfTheDay
//
//  Created by Guest User on 11/4/17.
//

import Foundation

@objcMembers class QuestionOfTheDay: NSObject {
    var question:String?
    var answer0:String?
    var answer1:String?
    var answer2:String?
    var objectId:String?
    var create:NSDate?
    var update:NSDate?
    
    init(question:String?, answer0:String?, answer1:String?, answer2:String?) {
        self.question = question
        self.answer0 = answer0
        self.answer1 = answer1
        self.answer2 = answer2
    }
    convenience override init() {
        self.init(question: "What is my name?", answer0: "Karthik",answer1: "Mahesh Babu", answer2: "Leonardo Decaprio")
    }
//    init(){
//        question = "What is my name?"
//        answer0 = "Karthik"
//        answer1 = "Mahesh Babu"
//        answer2 = "Leonardo Decaprio"
//    }
}
