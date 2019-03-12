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
//        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        let defaultPath = Realm.Configuration.defaultConfiguration.fileURL?.path
        let path = Bundle.main.path(forResource: "default", ofType: "realm")
        if !FileManager.default.fileExists(atPath: defaultPath!), let bundledPath = path {
            do {
                try FileManager.default.copyItem(atPath: bundledPath, toPath: defaultPath!)
            } catch {
                print("Error copying pre-populated Realm \(error)")
            }
        }
        
//        let bundlePath = Bundle.main.path(forResource: "default", ofType: "realm")
//        let destPath = Realm.Configuration.defaultConfiguration.fileURL?.path
//        let fileManager = FileManager.default
//
//        if fileManager.fileExists(atPath: destPath!) {
//            //File exist, do nothing
//            print(fileManager.fileExists(atPath: destPath!))
//
//
//            do {
//                let items = try fileManager.contentsOfDirectory(atPath: destPath!)
//                print(items)
//            } catch {
//                print(error)
//            }
//
//        } else {
//            do {
//                //Copy file from bundle to Realm default path
//                try fileManager.copyItem(atPath: bundlePath!, toPath: destPath!)
//            } catch {
//                print("\n",error)
//            }
//        }
//
//
        
//        do {
//            let realm = try Realm()
////            try realm.write {
////                realm.add()
////            }
//        } catch {
//            print("Error initializing new realm, \(error)")
//        }
//
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

