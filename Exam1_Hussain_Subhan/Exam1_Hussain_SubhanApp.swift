//
//  Exam1_Hussain_SubhanApp.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//


import SwiftUI

@main
struct National_Parks_AppApp: App {
    @StateObject private var dataStore = DataStore()  // Initializing DataStore

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(dataStore)  // Injecting DataStore to RootView
        }
    }
}
