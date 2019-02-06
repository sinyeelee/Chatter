//
//  SwipeableViewDelegate.swift
//  Chatter
//
//  Created by Sin Yee Lee on 3/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

protocol SwipeableViewDelegate: class {
    
    func didTap(view: SwipeableView)
    
    func didBeginSwipe(onView view: SwipeableView)
    
    func didEndSwipe(onView view: SwipeableView)
    
}
