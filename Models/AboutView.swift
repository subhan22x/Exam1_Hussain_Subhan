//
//  AboutView.swift
//  Exam1_Hussain_Subhan
//
//  Created by Subhan Hussain on 9/25/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Image(systemName: "pawprint.fill")
                .font(.largeTitle)
                .padding()

            Text("PetCare Companion helps you explore different pets and save your favorites.")
                .padding()
        }
        .navigationTitle("About")
    }
}
