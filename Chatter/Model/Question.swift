//
//  Questions.swift
//  Chatter
//
//  Created by Sin Yee Lee on 31/1/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import Foundation


class Question {
    
    let questionText : String
    let categoryType : String
    var liked : Bool
    
    init(text: String, type: String, like: Bool) {
        questionText = text
        categoryType = type
        liked = like
    }
    
}
