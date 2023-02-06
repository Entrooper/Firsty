//
//  ScoreViewModel.swift
//  Firsty
//
//  Created by Mehmet NARLIOGLU on 5.02.2023.
//

import Foundation

struct ScoreViewModel {
    
    
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
    
}
