//
//  FavoritesView.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//


import SwiftUI

struct FavoritesView: View {
    @ObservedObject var dataManager: PetDataManager  

    var body: some View {
        NavigationView {
            let favorites = dataManager.loadFavorites().filter { $0.isFavorite } // Filter favorites
            
            if favorites.isEmpty {
                Text("No favorites yet")
                    .foregroundColor(.gray)
                    .font(.title)
                    .padding()
            } else {
                List(favorites) { pet in
                    PetGridCell(pet: pet)
                }
            }
        }
        .navigationTitle("Favorites")
    }
}


class DataStore: ObservableObject {
    @Published var favoritePets: [PetItem] = []
}
