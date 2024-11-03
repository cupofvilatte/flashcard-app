//
//  ContentView.swift
//  flashcard-app
//
//  Created by Vilate Jules Knapp on 10/31/24.
//

import SwiftUI

// main page content
struct ContentView: View {

    
    // save empty flashcard arrays
    @State private var flashcards: [Flashcard] = []
    @State private var showingAddFlashcard: Bool = false
    
    // body for the page
    var body: some View {
        NavigationView {
            // Vertical Stack for the flashcards
            VStack {
                // list all the current flashcards and what their front and back text are
                List(flashcards) { card in
                    VStack(alignment: .leading){
                        Text("Front: \(card.frontText)")
                        Text("Back: \(card.backText)")
                    }
                }
                // button to add flashcard. When chosen, the AddFlashcard view will display
                Button("Add Flashcard") {
                    showingAddFlashcard = true
                }
                .padding()
                .sheet(isPresented: $showingAddFlashcard) {
                    AddFlashcardView(flashcards: $flashcards)
                }
                
                // Navigation link to take user to page for seeing the cards front and back
                NavigationLink(destination: FlashcardDisplayView(flashcards: flashcards)) {
                    Text("View Flashcards")
                        .padding()
                }
                .disabled(flashcards.isEmpty)
            }
            .navigationTitle("Flashcards")
        }
    }
}

// preview for immediate testing/feedback
#Preview {
    ContentView()
}
