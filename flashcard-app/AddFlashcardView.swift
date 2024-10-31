//
//  AddFlashcardView.swift
//  flashcard-app
//
//  Created by Vilate Jules Knapp on 10/31/24.
//

import SwiftUI

struct AddFlashcardView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var flashcards: [Flashcard]
    @State private var frontText = ""
    @State private var backText = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Front Text")) {
                    TextField("Enter front text", text: $frontText)
                }
                
                Section(header: Text("Back Text")) {
                    TextField("Enter back text", text: $backText)
                }
            }
            .navigationTitle("Add Flashcard")
            .navigationBarItems(trailing: Button("Add") {
                let newFlashcard = Flashcard(frontText: frontText, backText: backText)
                flashcards.append(newFlashcard)
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}
