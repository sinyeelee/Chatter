//
//  CGRect+SwipeAdditions.swift
//  Chatter
//
//  Created by Sin Yee Lee on 3/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import CoreGraphics

typealias CGLine = (start: CGPoint, end: CGPoint)

extension CGRect {
    
    var topLine: CGLine {
        return (SwipeDirection.topLeft.point, SwipeDirection.topRight.point)
    }
    var leftLine: CGLine {
        return (SwipeDirection.topLeft.point, SwipeDirection.bottomLeft.point)
    }
    var bottomLine: CGLine {
        return (SwipeDirection.bottomLeft.point, SwipeDirection.bottomRight.point)
    }
    var rightLine: CGLine {
        return (SwipeDirection.topRight.point, SwipeDirection.bottomRight.point)
    }
    
    var perimeterLines: [CGLine] {
        return [topLine, leftLine, bottomLine, rightLine]
    }
    
}
