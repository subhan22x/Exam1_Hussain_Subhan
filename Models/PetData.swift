//
//  PetData.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//


import Foundation

struct PetData {
    static let pets: [PetItem] = [
        PetItem(id: "1", name: "Dog", species: "Canis familiaris", description: "Loyal and playful companion, known as 'man’s best friend.'", imageName: "pawprint.fill"),
        PetItem(id: "2", name: "Cat", species: "Felis catus", description: "Independent and curious, enjoys cozy spaces and naps.", imageName: "pawprint.circle"),
        PetItem(id: "3", name: "Hamster", species: "Cricetinae", description: "Small and active pet, often kept in cages with wheels.", imageName: "pawprint"),
        PetItem(id: "4", name: "Rabbit", species: "Oryctolagus cuniculus", description: "Gentle and social, loves vegetables and hopping around.", imageName: "hare.fill"),
        PetItem(id: "5", name: "Turtle", species: "Testudines", description: "Calm and long-lived, recognized for their hard shells.", imageName: "tortoise.fill"),
        PetItem(id: "6", name: "Parrot", species: "Psittaciformes", description: "Colorful and intelligent, some can mimic human speech.", imageName: "bird.fill")
    ]
}
