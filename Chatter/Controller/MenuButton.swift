//
//  MenuButton.swift
//  Chatter
//
//  Created by Sin Yee Lee on 5/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import UIKit

class MenuButton: UIButton {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        UIView.animate(withDuration: 0.3, animations: {
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 45 * (.pi/180))
            } else {
                self.transform = .identity
            }
        })
        return super.beginTracking(touch, with: event)
    }
}
