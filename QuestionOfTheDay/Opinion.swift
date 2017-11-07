//
//  Opinion.swift
//  QuestionOfTheDay
//
//  Created by Guest User on 11/4/17.
//

import Foundation
import Foundation

@objcMembers class Opinion: NSObject {
    
    var answer:Int = 0
    var objectId:String?
    
    override init(){
        super.init()
        answer = 0
    }
    
    init(answer:Int){
        self.answer = answer
    }
}
