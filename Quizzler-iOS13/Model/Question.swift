//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 박윤철 on 2022/07/03.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text:String
    let answer:[String]
    let correctAnswer:String
    init(q:String,a:[String],correctAnswer:String) {
        text=q
        answer=a
        self.correctAnswer=correctAnswer
    }
}
