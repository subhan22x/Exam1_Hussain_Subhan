//
//  PetListView.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//


import SwiftUI

struct PetListView: View {
    @ObservedObject var dataManager: PetDataManager  

    var body: some View {
        NavigationView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                ForEach(dataManager.pets) { pet in
                    NavigationLink(destination: PetDetailView(pet: pet, dataManager: dataManager)) {
                        PetGridCell(pet: pet)
                    }
                }
            }
            .padding()
            .navigationTitle("All Pets")
        }
    }
}

struct PetGridCell: View {
    let pet: PetItem

    var body: some View {
        VStack {
            Image(systemName: pet.imageName)  // Placeholder for actual pet images
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)

            Text(pet.name)
                .font(.headline)
                .padding(.top, 5)

            Text(pet.species)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}
