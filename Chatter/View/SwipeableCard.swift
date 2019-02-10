//
//  SwipeableCard.swift
//  Chatter
//
//  Created by Sin Yee Lee on 3/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import UIKit
import CoreMotion

class SwipeableCard: SwipeableCardViewCard {


    var likeButtonDelegateObj : likeButtonDelegate?

    
    
    @IBOutlet private weak var titleLabel: UILabel!
    
 
    @IBOutlet weak var backgroundContainerView: UIView!
    

    @IBOutlet weak var LikeButton: UIButton!
    
    
    @IBAction func LikeButtonClicked(_ sender: UIButton) {
        
        if sender.currentImage == UIImage(named: "heart_off") {
            sender.setImage(UIImage(named: "heart_on")
                , for: .normal)
            likeButtonDelegateObj?.likeButtonPressed(liked: true)
        } else {
            sender.setImage(UIImage(named: "heart_off")
                , for: .normal)
            likeButtonDelegateObj?.likeButtonPressed(liked: false)
        }
    }
    
    /// Core Motion Manager
    private let motionManager = CMMotionManager()
    
    /// Shadow View
    private weak var shadowView: UIView?
    
    /// Inner Margin
    private static let kInnerMargin: CGFloat = 20.0
    
    var viewModel: Question? {
        didSet {
            configure(forViewModel: viewModel)
        }
        
    }
    
    private func configure(forViewModel viewModel: Question?) {
        if let viewModel = viewModel {
            titleLabel.text = viewModel.questionText
            
            backgroundContainerView.layer.cornerRadius = 14.0
            backgroundContainerView.layer.masksToBounds = true

        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        configureShadow()
    }
    
    // MARK: - Shadow
    
    private func configureShadow() {
        // Shadow View
        self.shadowView?.removeFromSuperview()
        let shadowView = UIView(frame: CGRect(x: SwipeableCard.kInnerMargin,
                                              y: SwipeableCard.kInnerMargin,
                                              width: bounds.width - (2 * SwipeableCard.kInnerMargin),
                                              height: bounds.height - (2 * SwipeableCard.kInnerMargin)))
        insertSubview(shadowView, at: 0)
        self.shadowView = shadowView
        
        // Roll/Pitch Dynamic Shadow
        //        if motionManager.isDeviceMotionAvailable {
        //            motionManager.deviceMotionUpdateInterval = 0.02
        //            motionManager.startDeviceMotionUpdates(to: .main, withHandler: { (motion, error) in
        //                if let motion = motion {
        //                    let pitch = motion.attitude.pitch * 10 // x-axis
        //                    let roll = motion.attitude.roll * 10 // y-axis
        //                    self.applyShadow(width: CGFloat(roll), height: CGFloat(pitch))
        //                }
        //            })
        //        }
        self.applyShadow(width: CGFloat(0.0), height: CGFloat(0.0))
    }
    
    private func applyShadow(width: CGFloat, height: CGFloat) {
        if let shadowView = shadowView {
            let shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: 14.0)
            shadowView.layer.masksToBounds = false
            shadowView.layer.shadowRadius = 8.0
            shadowView.layer.shadowColor = UIColor.black.cgColor
            shadowView.layer.shadowOffset = CGSize(width: width, height: height)
            shadowView.layer.shadowOpacity = 0.15
            shadowView.layer.shadowPath = shadowPath.cgPath
        }
    }
    
}

