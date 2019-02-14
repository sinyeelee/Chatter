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
    
    
    

    var selectedCategoryData: List<Question>?
    var likedCategory = List<Question>()
    var randomCategory = List<Question>()
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
        
        let randomCardsList = realm.objects(Question.self).shuffled()
        let randomCards = randomCardsList.reduce(List<Question>()) { (list, element) -> List<Question> in
            list.append(element)
            return list
        }
        randomCategory = randomCards
        selectedCategoryData = randomCategory
        swipeableCardView.dataSource = self
        
        
    }
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
        
        let favCardsList = realm.objects(Question.self).filter{$0.liked == true}
        let favCards = favCardsList.reduce(List<Question>()) { (list, element) -> List<Question> in
            list.append(element)
            return list
        }
        likedCategory = favCards
        selectedCategoryData = likedCategory
        swipeableCardView.dataSource = self
        print(favCards.count)
    }
    
    @IBOutlet weak var swipeableCardView: SwipeableCardViewContainer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        displaySelectedCategory()
        swipeableCardView.dataSource = self
        
        print(selectedCategory!)

     
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0)
        self.navigationController?.navigationBar.tintColor = UIColor.darkGray
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let originalColor = UIColor(red:1.00, green:0.33, blue:0.22, alpha:1.0)
        navigationController?.navigationBar.barTintColor = originalColor
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    
    func numberOfCards() -> Int {
        return selectedCategoryData!.count

    }
    
    func card(forItemAtIndex index: Int) -> SwipeableCardViewCard {
        let viewModel = self.selectedCategoryData![index]
        let cardView = SwipeableCard()
        cardView.likeButtonDelegateObj = self
        cardView.viewModel = viewModel
        if viewModel.liked == true {
            cardView.LikeButton.setImage(UIImage(named: "heart_on")
                , for: .normal)
        } else {
            cardView.LikeButton.setImage(UIImage(named: "heart_off")
                , for: .normal)
        }
        return cardView
        
    }
    

    
    func viewForEmptyCards() -> UIView? {
        return nil
    }
    
    

    func displaySelectedCategory() {
        
        selectedCategoryData = selectedCategory!.questions
        
    }
    
   
    
    func likeButtonPressed(question: String, liked: Bool) {
        
        let filteredQns = selectedCategoryData!.filter {$0.questionText == question}
        let f1 = filteredQns.first
        
        
        if liked == true {
            
            do {
                let realm = try Realm()
                            try realm.write {
                                f1?.liked = true
                            }
            } catch {
                print("Error initializing new realm, \(error)")
            }

            print("liked")
            print(f1!)
            
        } else {
           
            do {
                let realm = try Realm()
                try realm.write {
                    f1?.liked = false
                }
            } catch {
                print("Error initializing new realm, \(error)")
            }
            
            print("unliked")
            print(f1!)
            
        }
        

        
        
    }
    
   
   
    
    
    
   
   
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

   




