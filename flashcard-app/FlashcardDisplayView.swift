//
//  FlashcardDisplayView.swift
//  flashcard-app
//
//  Created by Vilate Jules Knapp on 11/2/24.
//

import SwiftUI

// structure for the Page of viewing each flashcard
struct FlashcardDisplayView: View {
    let flashcards: [Flashcard]
    @State private var currentIndex = 0
    @State private var showingFront = true
    
    var body: some View {
        // vertical stack which will show the card
        VStack {
            // if the flashcard list is empty, show that no flashcards are available to display (although the nav to this view is not actually available if the array is empty)
            if flashcards.isEmpty {
                Text("No flashcards to display.")
                    .font(.title)
                    .padding()
            // show one side of the card
            } else {
                // show the front unless clicked then show the back
                Text(showingFront ? flashcards[currentIndex].frontText : flashcards[currentIndex].backText)
                    // basic styling for each card
                    .font(.largeTitle)
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    // used to be '.foregroundColor' but support is dropping for that soon so now it's '.foregroundStyle'
                    .foregroundStyle(.blue)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding()
                    // when the card is tapped, switch to show the other side of it
                    .onTapGesture {
                        withAnimation {
                            showingFront.toggle()
                        }
                    }
                // horizontal stack for the buttons
                HStack {
                    // button to view the previous card. Disabled if there is not a lower card index
                    Button("Previous") {
                        if currentIndex > 0 {
                            currentIndex -= 1
                            showingFront = true
                        }
                    }
                    // to disable when index = 0
                    .disabled(currentIndex == 0)
                    
                    Spacer()
                    
                    // button to view the next card. Disabled if viewing the last card
                    Button("Next") {
                        if currentIndex < flashcards.count - 1 {
                            currentIndex += 1
                            showingFront = true
                        }
                    }
                    // to disable when viewing the last card
                    .disabled(currentIndex == flashcards.count - 1)
                }
                .padding()
            }
        }
        .navigationTitle("Flashcards")
    }
}
