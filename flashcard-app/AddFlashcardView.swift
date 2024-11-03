//
//  AddFlashcardView.swift
//  flashcard-app
//
//  Created by Vilate Jules Knapp on 10/31/24.
//


import SwiftUI

// Structure for the view that pops up when add flashcard is chosen
struct AddFlashcardView: View {
    // view will dismiss itself when added
    @Environment(\.presentationMode) var presentationMode
    @Binding var flashcards: [Flashcard]
    // save front and back text as empty
    @State private var frontText = ""
    @State private var backText = ""
    // remind keyboard to come up when the front text box is chosen
    @FocusState private var isFrontTextFocused: Bool
    
    var body: some View {
        NavigationView {
            // entry form for front and back text
            Form {
                Section(header: Text("Front Text")) {
                    TextField("Enter front text", text: $frontText)
                        .focused($isFrontTextFocused)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Section(header: Text("Back Text")) {
                    TextField("Enter back text", text: $backText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
            .navigationTitle("Add Flashcard")
            // button to add the new item
            .navigationBarItems(trailing: Button("Add") {
                // when the button is clicked, a new flashcard will be added saving the front and back text and will be appended to the flashcards
                let newFlashcard = Flashcard(frontText: frontText, backText: backText)
                flashcards.append(newFlashcard)
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}
