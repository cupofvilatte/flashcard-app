//
//  ContentView.swift
//  flashcard-app
//
//  Created by Vilate Jules Knapp on 10/31/24.
//

import SwiftUI

struct ContentView: View {

    
        
    @State private var flashcards: [Flashcard] = []
    @State private var showingAddFlashcard: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                List(flashcards) { card in
                    VStack(alignment: .leading){
                        Text("Front: \(card.frontText)")
                        Text("Back: \(card.backText)")
                    }
                }
                Button("Add Flashcard") {
                    showingAddFlashcard = true
                }
                .padding()
                .sheet(isPresented: $showingAddFlashcard) {
                    AddFlashcardView(flashcards: $flashcards)
                }
            }
            .navigationTitle("Flashcards")
        }
    }
}

#Preview {
    ContentView()
}
