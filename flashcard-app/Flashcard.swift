//
//  Flashcard.swift
//  flashcard-app
//
//  Created by Vilate Jules Knapp on 10/31/24.
//

import Foundation

struct Flashcard: Identifiable {
    let id = UUID()
    var frontText: String
    var backText: String
}
