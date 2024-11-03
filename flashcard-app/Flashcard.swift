//
//  Flashcard.swift
//  flashcard-app
//
//  Created by Vilate Jules Knapp on 10/31/24.
//

import Foundation

// structure for the flashcard which has an id, fronttext, and backtext
struct Flashcard: Identifiable {
    let id = UUID()
    var frontText: String
    var backText: String
}
