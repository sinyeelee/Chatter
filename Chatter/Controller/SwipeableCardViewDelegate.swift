//
//  SwipeableCardViewDelegate.swift
//  Chatter
//
//  Created by Sin Yee Lee on 3/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import Foundation

protocol SwipeableCardViewDelegate: class {
    
    func didSelect(card: SwipeableCardViewCard, atIndex index: Int)
    
}
