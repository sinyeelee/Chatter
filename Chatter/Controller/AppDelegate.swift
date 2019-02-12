//
//  AppDelegate.swift
//  Chatter
//
//  Created by Sin Yee Lee on 31/1/19.
//  Copyright © 2019 LightlySalted. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        let c1 = Category()
        c1.name = "Casual"
        
        let q2 = Question()
        q2.questionText = "What's your favorite part about living in [city]? Least favorite?"
        q2.categoryType = "goodForAll"
        q2.liked = false
        
        let q3 = Question()
        q3.questionText = "What’s your story?"
        q3.categoryType = "goodForAll"
        q3.liked = false
        
        let q4 = Question()
        q4.questionText = "Is your day going like you expected?"
        q4.categoryType = "goodForAll"
        q4.liked = false
        
        let q5 = Question()
        q5.questionText = "What was the highlight of your week?"
        q5.categoryType = "goodForAll"
        q5.liked = false
        
        let q6 = Question()
        q6.questionText = "What do you like to do in spring/winter?"
        q6.categoryType = "goodForAll"
        q6.liked = false
        
        let q7 = Question()
        q7.questionText = "What is your favorite holiday?"
        q7.categoryType = "goodForAll"
        q7.liked = false
        
        let q8 = Question()
        q8.questionText = "Where is the most interesting place you’ve been?"
        q8.categoryType = "goodForAll"
        q8.liked = false
        
        let q9 = Question()
        q9.questionText = "How are things going?"
        q9.categoryType = "goodForAll"
        q9.liked = false
        
        let q10 = Question()
        q10.questionText = "What was the best book or series that you’ve ever read?"
        q10.categoryType = "goodForAll"
        q10.liked = false
        
        
        
        do {
            let realm = try Realm()
//            try realm.write {
//                realm.add()
//            }
        } catch {
            print("Error initializing new realm, \(error)")
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

