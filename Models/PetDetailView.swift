//
//  PetDetailView.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//


import SwiftUI

struct PetDetailView: View {
    @State var pet: PetItem
    @ObservedObject var dataManager: PetDataManager

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(systemName: pet.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)

                Text(pet.name)
                    .font(.title)
                    .bold()

                Text(pet.species)
                    .font(.title2)
                    .foregroundColor(.gray)

                Text(pet.description)
                    .font(.body)
                    .padding()

                // Toggle favorite status
                Button(action: {
                    dataManager.toggleFavorite(for: pet)
                    pet.isFavorite.toggle()
                }) {
                    Image(systemName: pet.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(pet.isFavorite ? .red : .gray)
                        .font(.title)
                        .padding()
                }
            }
            .padding()
            .navigationTitle(pet.name)
        }
    }
}
