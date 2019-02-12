//
//  Category.swift
//  Chatter
//
//  Created by Sin Yee Lee on 12/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import Foundation
import RealmSwift


class Category: Object {
    
    @objc dynamic var name = ""
    let questions = List<Question>()
}
