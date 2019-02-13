//
//  LikeButtonDelegate.swift
//  Chatter
//
//  Created by Sin Yee Lee on 8/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import Foundation

protocol likeButtonDelegate {
    func likeButtonPressed(question: String, liked: Bool)
}
