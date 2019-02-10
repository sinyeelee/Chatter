//
//  Questions.swift
//  Chatter
//
//  Created by Sin Yee Lee on 31/1/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import Foundation

class QuestionBank {
    
   var goodForAll = [Question]()
   var date = [Question]()
   var business = [Question]()
   var profiling = [Question]()
   var casual = [Question]()
   var allCategories = [Question]()
    
    init() {
    
        //MARK: - goodForAll questions
        
        goodForAll.append(Question(text: "What's the most interesting thing you've read/watch lately?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "What's your favorite part about living in [city]? Least favorite?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "What’s your story?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "Is your day going like you expected?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "What was the highlight of your week?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "What do you like to do in spring/winter?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "What is your favorite holiday?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "Where is the most interesting place you’ve been?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "How are things going?", type: "goodForAll", like: false))
        
        goodForAll.append(Question(text: "What was the best book or series that you’ve ever read?", type: "goodForAll", like: false))
        
        //MARK: - date questions
        
        date.append(Question(text: "Given the choice of anyone in the world, whom would you want as a dinner guest?", type: "date", like: false))
        
         date.append(Question(text: "Would you like to be famous? In what way?", type: "date", like: false))
        
         date.append(Question(text: "What would constitute a “perfect” day for you?", type: "date", like: false))
        
         date.append(Question(text: "When did you last sing to yourself? To someone else?", type: "date", like: false))
        
         date.append(Question(text: "If you were able to live to the age of 90 and retain either the mind or body of a 30-year-old for the last 60 years of your life, which would you want?", type: "date", like: false))
        
         date.append(Question(text: "Do you have a secret hunch about how you will die?", type: "date", like: false))
        
         date.append(Question(text: "Name three things you and your partner appear to have in common.", type: "date", like: false))
        
         date.append(Question(text: "For what in your life do you feel most grateful?", type: "date", like: false))
        
         date.append(Question(text: "If you could change anything about the way you were raised, what would it be?", type: "date", like: false))
        
         date.append(Question(text: "If you could wake up tomorrow having gained any one quality or ability, what would it be?", type: "date", like: false))
        
        //MARK: - business questions
        
        business.append(Question(text: "Why did you decide to attend?", type: "business", like: false))
        
        business.append(Question(text: "Which [speaker/panel] did you most enjoy? Which did you find the most useful?", type: "business", like: false))
        
        business.append(Question(text: "What did you think of the talk [length, structure, style]?", type: "business", like: false))
        
        business.append(Question(text: "How does this conference compare to others you've attended?", type: "business", like: false))
        
        business.append(Question(text: "On what topic do people always come to you with questions?", type: "business", like: false))
        
        business.append(Question(text: "Working on anything exciting lately?", type: "business", like: false))
        
        business.append(Question(text: "What’s the best / worst thing about your work?", type: "business", like: false))
        
        business.append(Question(text: "What do you love about your job?", type: "business", like: false))
        
        business.append(Question(text: "Are there any common misconceptions about your job?", type: "business", like: false))
        
        business.append(Question(text: "How did you get into the industry?", type: "business", like: false))
        
        //MARK: - profiling questions
        
        profiling.append(Question(text: "You look like you could be in [random occupation]. Am I anywhere close?", type: "profiling", like: false))
        
        profiling.append(Question(text: "Do you have a secret talent?", type: "profiling", like: false))
        
        profiling.append(Question(text: "Working on anything exciting lately?", type: "profiling", like: false))
        
        profiling.append(Question(text: "What is something you are obsessed with?", type: "profiling", like: false))
        
        profiling.append(Question(text: "Who is your favorite entertainer (comedian, musician, actor, etc.)?", type: "profiling", like: false))
        
        profiling.append(Question(text: "Who was your childhood hero?", type: "profiling", like: false))
        
        profiling.append(Question(text: "What three words best describe you?", type: "profiling", like: false))
        
        profiling.append(Question(text: "What would be your perfect weekend?", type: "profiling", like: false))
        
        profiling.append(Question(text: "What is your guilty pleasure?", type: "profiling", like: false))
        
        profiling.append(Question(text: "What was the best time period of your life?", type: "profiling", like: false))
        
        //MARK: - casual questions
        
        casual.append(Question(text: "What's keeping you busy lately?", type: "casual", like: false))
        
        casual.append(Question(text: "Have you tried any of the food? What's good?", type: "casual", like: false))
        
        casual.append(Question(text: "What did you get done today?", type: "casual", like: false))
        
        casual.append(Question(text: "Why did you come tonight?", type: "casual", like: false))
        
        casual.append(Question(text: "What's your favorite part about living in [city]? Least favorite?", type: "casual", like: false))
        
        casual.append(Question(text: "You look like you could be in [random occupation]. Am I anywhere close?", type: "casual", like: false))
        
        casual.append(Question(text: "Great [shoes/haircut/shirt]! Where'd you get it?", type: "casual", like: false))
        
        casual.append(Question(text: "Have you been to any great restaurants lately?", type: "casual", like: false))
        
        casual.append(Question(text: "Got any fun plans for the weekend? I need some inspiration so I don't end up on the couch with some Netflix and Ben & Jerry's.", type: "casual", like: false))
        
        casual.append(Question(text: "What was the highlight of your week?", type: "casual", like: false))
        
        getAll()
    }
    
    func getAll() {
        allCategories.append(contentsOf: goodForAll + date + business + profiling + casual)
    }
    
}