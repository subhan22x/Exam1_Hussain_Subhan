//
//  PetDataManager.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//


import Foundation

class PetDataManager: ObservableObject {
    @Published var pets: [PetItem]
    
    init(pets: [PetItem] = PetData.pets) {
        self.pets = pets
    }
    
    func toggleFavorite(for pet: PetItem) {
        if let index = pets.firstIndex(where: { $0.id == pet.id }) {
            pets[index].isFavorite.toggle()
            saveFavoriteStatus(pet: pets[index])
        }
    }
    
    // Save fav
    private func saveFavoriteStatus(pet: PetItem) {
        let defaults = UserDefaults.standard
        defaults.set(pet.isFavorite, forKey: pet.id)
    }
    
    // Load pets 
    func loadFavorites() -> [PetItem] {
        var updatedPets = pets
        for index in 0..<updatedPets.count {
            let isFavorite = UserDefaults.standard.bool(forKey: updatedPets[index].id)
            updatedPets[index].isFavorite = isFavorite
        }
        return updatedPets
    }
}
