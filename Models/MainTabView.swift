//
//  MainTabView.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//


import SwiftUI

struct MainTabView: View {
    @StateObject private var dataManager = PetDataManager()

    var body: some View {
        TabView {
            // All Pets Tab
            PetListView(dataManager: dataManager)
                .tabItem {
                    Image(systemName: "pawprint.fill")
                    Text("All Pets")
                }

            // Favorites Tab
            FavoritesView(dataManager: dataManager)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }

            // About Tab
            AboutView()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("About")
                }
        }
        .accentColor(.blue)
        .environmentObject(dataManager)
    }
}
