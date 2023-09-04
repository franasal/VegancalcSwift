//
//  veganCalcApp.swift
//  veganCalc
//
//  Created by Student on 31.08.23.
//


import SwiftUI

@main
struct veganCalcApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if granted {
                print("Notification permission granted")
            } else if let error = error {
                print("Error requesting notification permission: \(error)")
            }
        }
    }
    
}



