//
//  QuestionsViewController.swift
//  Chatter
//
//  Created by Sin Yee Lee on 1/2/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import UIKit
import RealmSwift


class QuestionsViewController: UIViewController, SwipeableCardViewDataSource, likeButtonDelegate  {
    
    
    
//    let allQuestions = QuestionBank()
    var selectedCategoryData: List<Question>?
    var likedCategory = List<Question>()
    var selectedCategory: Category?

    let realm = try! Realm()
    
    
    @IBOutlet weak var menuView: UIView!
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        
        if  menuView.isHidden {
            menuView.isHidden = false
        } else {
            menuView.isHidden = true
        }

    }
    
    @IBAction func randomButtonPressed(_ sender: UIButton) {
//        let randomNumber = Int.random(in: 0 ..< allQuestions.allCategories.count)
//        selectedCategoryData = allQuestions.allCategories
//        selectedCategoryData.shuffle()
//        swipeableCardView.dataSource = self
        
    }
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
//       selectedCategoryData = likedCategory
//       swipeableCardView.dataSource = self
       
    }
    
    @IBOutlet weak var swipeableCardView: SwipeableCardViewContainer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
//        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
//        rightSwipe.direction = .right
//
//        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
//        leftSwipe.direction = .left
        


        
        
        displaySelectedCategory()
        swipeableCardView.dataSource = self
        
        print(selectedCategory)
     
    }
    
    
    


    
    func numberOfCards() -> Int {
        return selectedCategoryData!.count

    }
    
    func card(forItemAtIndex index: Int) -> SwipeableCardViewCard {
        let viewModel = self.selectedCategoryData![index]
        let cardView = SwipeableCard()
        cardView.likeButtonDelegateObj = self
        cardView.viewModel = viewModel
        return cardView
        
    }
    

    
    func viewForEmptyCards() -> UIView? {
        return nil
    }
    
    

    func displaySelectedCategory() {
        
        selectedCategoryData = selectedCategory!.questions 
        
//        switch selectedCategory {
//        case "Good For All":
//            return selectedCategoryData = allQuestions.goodForAll
//        case "Date":
//            return selectedCategoryData = allQuestions.date
//        case "Business":
//            return selectedCategoryData = allQuestions.business
//        case "Profiling":
//            return selectedCategoryData = allQuestions.profiling
//        case "Casual":
//            return selectedCategoryData = allQuestions.casual
//        default:
//            return selectedCategoryData = allQuestions.goodForAll
//        }
//
    }
    
   
    
    func likeButtonPressed(liked: Bool) {
        displaySelectedCategory()
        if liked == true {
            
           
            print("liked")
            
        } else {
           
            print("unliked")
            
        }
        filterLikeCards()

    }
    
    func filterLikeCards() {
        
//        let filteredCards = allQuestions.allCategories.filter({$0.liked == true})
//        likedCategory = filteredCards
        
    }
    
   
    

        
    // MARK: - SwipeableCardViewDataSource
    
  
    
//    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
//        if sender.state == .ended {
//            switch sender.direction {
//            case .right:
//                nextQuestion()
//            case .left:
//                nextQuestion()
//            default:
//                nextQuestion()
//            }
//        }
//    }
    
   
   
//    func nextQuestion() {
//
//        totalQuestions = selectedCategoryData.count
//
//        if questionNumber < totalQuestions {
//            questionLabel.text = selectedCategoryData[questionNumber].questionText
//            questionNumber += 1
//        }
//        else {
//            let alert = UIAlertController(title: "End", message: "You've finished all questions", preferredStyle: .alert)
//
//            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
//                self.startOver()
//            }
//
//            alert.addAction(restartAction)
//            present(alert, animated: true, completion: nil)
//        }
//
//    }
//
//    func startOver() {
//
//        questionNumber = 0
//        nextQuestion()
//
//
//    }
    
}



//class QuestionsViewController: UIViewController {
//
//    let allQuestions = QuestionBank()
//    var selectedCategory = ""
//    var selectedCategoryData = [Question]()
//    var questionNumber : Int = 0
//    var totalQuestions : Int = 0
//
//
//    @IBOutlet weak var questionLabel: UILabel!
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
//
//        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
//
//        view.addGestureRecognizer(rightSwipe)
//        view.addGestureRecognizer(leftSwipe)
//
//        displaySelectedCategory()
//        nextQuestion()
//
//    }
//
//    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
//        if sender.state == .ended {
//            switch sender.direction {
//            case .right:
//                nextQuestion()
//            case .left:
//                nextQuestion()
//            default:
//                nextQuestion()
//            }
//        }
//}

   




