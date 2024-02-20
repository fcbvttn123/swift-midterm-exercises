//
//  AppDelegate.swift
//  w6Exercise
//
//  Created by Default User on 2/20/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var options: [String] = []
    var gameInfo: [String: String] = [:]

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        options = ["Play", "About", "Setting"]
        gameInfo["score"] = "90"
        gameInfo["timeLeft"] = "02:00"
        gameInfo["highScore"] = "120"
        gameInfo["level"] = "Hard"
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

