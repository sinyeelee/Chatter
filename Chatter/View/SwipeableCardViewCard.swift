//
//  SwipeableCardView.swift
//  Chatter
//
//  Created by Sin Yee Lee on 3/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import UIKit

class SwipeableCardViewCard: SwipeableView, NibView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
}
