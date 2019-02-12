//
//  Questions.swift
//  Chatter
//
//  Created by Sin Yee Lee on 31/1/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import Foundation
import RealmSwift

class Question: Object {
    
    @objc dynamic var questionText = ""
    @objc dynamic var categoryType = ""
    @objc dynamic var liked = false
    var ParentCategory = LinkingObjects(fromType: Category.self, property: "questions")
    
}


